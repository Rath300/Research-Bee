'use client';

import React, { useRef, useState } from 'react';
import { motion, PanInfo, useMotionValue, useTransform } from 'framer-motion';
import { Card, CardContent } from '@/components/ui/Card';
import { FiUser, FiMapPin, FiClock, FiBookmark, FiX, FiHeart } from 'react-icons/fi';
import { Button } from '@/components/ui/Button';
import { Profile } from '@research-collab/db';
import { Avatar } from '@/components/ui/Avatar';

interface SwipeCardProps {
  profile: Profile;
  onSwipe: (direction: 'left' | 'right', profileId: string) => void;
}

export function SwipeCard({ profile, onSwipe }: SwipeCardProps) {
  const { 
    id, 
    first_name, 
    last_name, 
    bio, 
    avatar_url, 
    institution, 
    location, 
    availability, 
    interests, 
    field_of_study
  } = profile;
  
  const fullName = `${first_name} ${last_name}`;
  
  // Motion values for the swipe card
  const x = useMotionValue(0);
  const rotate = useTransform(x, [-150, 0, 150], [-30, 0, 30]);
  const opacity = useTransform(x, [-150, -75, 0, 75, 150], [0, 1, 1, 1, 0]);
  
  // Visual indicators for direction
  const leftIndicatorOpacity = useTransform(x, [-150, -75, 0], [1, 0.5, 0]);
  const rightIndicatorOpacity = useTransform(x, [0, 75, 150], [0, 0.5, 1]);
  
  const cardRef = useRef<HTMLDivElement>(null);
  const [isDragging, setIsDragging] = useState(false);
  
  const handleDragEnd = (event: MouseEvent | TouchEvent | PointerEvent, info: PanInfo) => {
    setIsDragging(false);
    const direction = info.offset.x > 100 ? 'right' : info.offset.x < -100 ? 'left' : null;
    
    if (direction) {
      // Trigger the swipe action
      onSwipe(direction, id);
    }
  };
  
  // Get availability display text
  const getAvailabilityText = () => {
    switch (availability) {
      case 'full-time':
        return 'Available Full-time';
      case 'part-time':
        return 'Available Part-time';
      case 'weekends':
        return 'Available Weekends';
      case 'not-available':
        return 'Currently Unavailable';
      default:
        return 'Availability Unknown';
    }
  };
  
  return (
    <div className="absolute w-full">
      <motion.div
        ref={cardRef}
        style={{ 
          x, 
          rotate, 
          opacity,
          zIndex: isDragging ? 10 : 0
        }}
        drag="x"
        dragConstraints={{ left: 0, right: 0 }}
        dragElastic={0.7}
        onDragStart={() => setIsDragging(true)}
        onDragEnd={handleDragEnd}
        className="w-full"
        whileTap={{ scale: 0.99 }}
      >
        <Card className="relative h-[30rem] overflow-hidden border-border-medium shadow-soft">
          {/* Left indicator */}
          <motion.div 
            className="absolute left-5 top-5 bg-surface-secondary text-text-muted rounded-md p-3 z-20 border border-border-medium"
            style={{ opacity: leftIndicatorOpacity }}
          >
            <FiX size={32} />
          </motion.div>
          
          {/* Right indicator */}
          <motion.div 
            className="absolute right-5 top-5 bg-accent-soft text-accent-primary rounded-md p-3 z-20 border border-border-medium"
            style={{ opacity: rightIndicatorOpacity }}
          >
            <FiHeart size={32} />
          </motion.div>
          
          <CardContent className="p-6 flex flex-col h-full bg-surface-primary">
            {/* Profile header */}
            <div className="flex items-center space-x-4 mb-4">
              <div className="h-24 w-24 rounded-full bg-surface-secondary flex items-center justify-center overflow-hidden border-2 border-border-light">
                <Avatar 
                  src={avatar_url} 
                  alt={fullName}
                  size="lg"
                  fallback={<FiUser className="h-12 w-12 text-text-muted" />} 
                />
              </div>
              
              <div>
                <h2 className="text-2xl font-heading font-medium text-text-primary">{fullName}</h2>
                {institution && (
                  <p className="text-text-secondary text-sm">{institution}</p>
                )}
                {field_of_study && (
                  <p className="text-accent-primary font-medium text-sm">
                    {field_of_study}
                  </p>
                )}
              </div>
            </div>
            
            {/* Status indicators */}
            <div className="flex flex-wrap gap-2 mb-4">
              {location && (
                <span className="tag flex items-center gap-1">
                  <FiMapPin size={14} />
                  {location}
                </span>
              )}
              
              {availability && (
                <span className="tag-accent flex items-center gap-1">
                  <FiClock size={14} />
                  {getAvailabilityText()}
                </span>
              )}
            </div>
            
            {/* Bio */}
            <div className="mb-4 flex-grow overflow-auto">
              <h3 className="font-medium text-text-primary mb-2 text-sm">About</h3>
              <p className="text-text-secondary whitespace-pre-line text-sm leading-relaxed">
                {bio || "No bio available."}
              </p>
            </div>
            
            {/* Interests */}
            {interests && interests.length > 0 && (
              <div className="mb-6">
                <h3 className="font-medium text-text-primary mb-2 text-sm">Research Interests</h3>
                <div className="flex flex-wrap gap-2">
                  {interests.map((interest: string) => (
                    <span 
                      key={interest}
                      className="tag-accent flex items-center gap-1"
                    >
                      <FiBookmark size={12} />
                      {interest}
                    </span>
                  ))}
                </div>
              </div>
            )}
            
            {/* Action buttons */}
            <div className="flex justify-center gap-4">
              <Button
                variant="outline"
                size="lg"
                className="h-12 w-12 rounded-md p-0 text-text-secondary hover:text-text-primary"
                onClick={() => onSwipe('left', id)}
                aria-label="Pass"
              >
                <FiX size={22} />
              </Button>
              
              <Button
                variant="primary"
                size="lg"
                className="h-12 w-12 rounded-md p-0"
                onClick={() => onSwipe('right', id)}
                aria-label="Like"
              >
                <FiHeart size={22} />
              </Button>
            </div>
          </CardContent>
        </Card>
      </motion.div>
    </div>
  );
}

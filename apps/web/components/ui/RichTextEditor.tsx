'use client';

import { useEditor, EditorContent, Editor } from '@tiptap/react';
import StarterKit from '@tiptap/starter-kit';
import React from 'react';
import { 
  FiBold, FiItalic, FiList, FiMinus, FiType, FiAlignLeft 
} from 'react-icons/fi';

interface RichTextEditorProps {
  value: string;
  onChange: (richText: string) => void;
  placeholder?: string;
  hasError?: boolean;
}

const editorProseClasses =
  'prose prose-sm sm:prose lg:prose-lg xl:prose-xl prose-headings:font-heading prose-p:font-sans prose-li:font-sans min-h-[150px] max-w-full focus:outline-none p-3 text-text-primary';

const ToolbarButton = ({ onClick, isActive, title, children }: {
  onClick: () => void;
  isActive?: boolean;
  title: string;
  children: React.ReactNode;
}) => (
  <button
    type="button"
    onClick={onClick}
    title={title}
    className={`p-2 rounded-md transition-colors duration-150 
      ${isActive ? 'bg-accent-soft text-accent-primary' : 'text-text-muted hover:bg-surface-hover hover:text-text-primary'}`}
  >
    {children}
  </button>
);

export function RichTextEditor({ value, onChange, placeholder, hasError }: RichTextEditorProps) {
  const editor = useEditor({
    extensions: [
      StarterKit.configure({
        heading: {
          levels: [1, 2, 3],
        },
        bulletList: {
          HTMLAttributes: { class: 'list-disc pl-6' },
        },
        orderedList: {
          HTMLAttributes: { class: 'list-decimal pl-6' },
        },
      }),
    ],
    content: value,
    editorProps: {
      attributes: {
        class: `${editorProseClasses} ${hasError ? 'border-red-600 focus-within:border-red-500' : 'border-border-medium focus-within:border-accent-primary'} bg-surface-primary rounded-b-md`,
      },
    },
    onUpdate: ({ editor }) => {
      onChange(editor.getHTML());
    },
  });

  if (!editor) {
    return null;
  }

  return (
    <div className={`bg-surface-primary rounded-md shadow-sm border ${hasError ? 'border-red-600' : 'border-border-medium'}`}>
      <div className="flex flex-wrap items-center gap-1 p-2 border-b border-border-light bg-surface-secondary rounded-t-md">
        <ToolbarButton title="Bold" onClick={() => editor.chain().focus().toggleBold().run()} isActive={editor.isActive('bold')}><FiBold size={18} /></ToolbarButton>
        <ToolbarButton title="Italic" onClick={() => editor.chain().focus().toggleItalic().run()} isActive={editor.isActive('italic')}><FiItalic size={18} /></ToolbarButton>
        <ToolbarButton title="Strikethrough" onClick={() => editor.chain().focus().toggleStrike().run()} isActive={editor.isActive('strike')}><FiType size={18} /></ToolbarButton>
        <ToolbarButton title="Bullet List" onClick={() => editor.chain().focus().toggleBulletList().run()} isActive={editor.isActive('bulletList')}><FiList size={18} /></ToolbarButton>
        <ToolbarButton title="Ordered List" onClick={() => editor.chain().focus().toggleOrderedList().run()} isActive={editor.isActive('orderedList')}><FiList style={{ transform: 'scaleY(-1)' }} size={18} /> {/* Rough OL icon */}</ToolbarButton>
        <ToolbarButton title="Paragraph" onClick={() => editor.chain().focus().setParagraph().run()} isActive={editor.isActive('paragraph')}><FiAlignLeft size={18} /></ToolbarButton>
        <ToolbarButton title="Horizontal Rule" onClick={() => editor.chain().focus().setHorizontalRule().run()}><FiMinus size={18}/></ToolbarButton>
      </div>
      <EditorContent editor={editor} placeholder={placeholder} />
    </div>
  );
}

#!/usr/bin/env ruby
# This script converts xccolorthemes to dtvcolorthemes for porting xcode 3.x themes to xcode 4.x 
# created by ashley towns <ashleyis@me.com> 
# Public domain.
# ./dvtcolorconvert <inputfile>
# spits out a .dtvcolortheme file

require 'rubygems'
require 'plist'
raise "Error: need a source file #{__FILE__} [file.xccolortheme]" if ARGV.length == 0 

def alpha inc, alpha=1
  "#{inc} #{alpha}"
end
def convert infile
  hash = Plist::parse_xml infile
  out_hash = {}
  out_hash[:DVTSourceTextSyntaxFonts] = {}
  out_hash[:DVTSourceTextSyntaxColors] = {}
  hash.each do |name, node|
    node.each do |child_name, child|
      puts "[on] node:#{name} child:#{child_name}(#{child})"
      if name == "Colors"
        case child_name
          when /Background/ 
            out_hash[:DVTSourceTextBackground] = alpha child
            out_hash[:DVTConsoleTextBackgroundColor] = alpha child
            out_hash[:DVTSourceTextInvisiblesColor] = alpha child
            out_hash[:DVTSourceTextBlockDimBackgroundColor] = alpha child
          when /InsertionPoint/ 
            out_hash[:DVTSourceTextInsertionPointColor] = alpha child
            out_hash[:DVTConsoleTextInsertionPointColor] = alpha child
            out_hash[:DVTDebuggerInsutrctionPointerColor] = alpha child
            out_hash[:DVTConsoleDebuggerInputTextColor] = alpha child
            out_hash[:DVTConsoleDebuggerOutputTextColor] = alpha child
            out_hash[:DVTConsoleExectuableInputTextColor] = alpha child
            out_hash[:DVTConsoleExecutableOutputTextColor] = alpha child
          when /Selection/
            out_hash[:DVTSourceTextSelectionColor] = alpha child
            out_hash[:DVTConsoleTextSelectionColor] = alpha child
            out_hash[:DVTDebuggerPromptTextColor] = alpha child
          else
            out_hash[:DVTSourceTextSyntaxColors][child_name] = alpha child
        end
      elsif name == "Fonts"
        case child_name
          when /xcode.syntax.plain/
            child = "Inconsolata - 14pt"
            out_hash[:DVTConsoleDebuggerInputTextFont] = child
            out_hash[:DVTConsoleDebuggerOutputTextFont] = child
            out_hash[:DVTConsoleDebuggerPromptTextFont] = child
            out_hash[:DVTConsoleExecutableInputTextFont] = child
            out_hash[:DVTConsoleExecutableOutputTextFont] = child
            out_hash[:DVTSourceTextSyntaxFonts]['xcode.syntax.plain'] = child
          else
            out_hash[:DVTSourceTextSyntaxFonts][child_name] = "Inconsolata - 14pt" #child
        end
      else
        raise "I don't know what #{name} is."
      end
    end
  end
  puts "Saving #{infile.gsub(/xccolortheme/,'dvtcolortheme')}"
  fp = File.open(infile.gsub(/xccolortheme/,'dvtcolortheme'),'w')
  fp.write out_hash.to_plist
  fp.close
end

convert ARGV[0]
#Dir['*.xccolortheme'].each do |file|
#  convert file
#end

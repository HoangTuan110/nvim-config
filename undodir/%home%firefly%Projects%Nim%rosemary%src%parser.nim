Vim�UnDo� ����V��`2N������¹�"\��4}|���                                      ab��   	 _�                        1    ����                                                                                                                                                                                                                                                                                                                                                             ab�     �               =doAssert parser.match("one:1;two:2;three:3;four:4", words).ok5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ab�Q     �               ,doAssert parser.match("a:b:c:d:4", words).ok5�_�                       %    ����                                                                                                                                                                                                                                                                                                                                                             ab�\    �      	         %  expr <- define * *(';' * expr) * !15�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ab�     �               %  expr <- define * *(';' * expr) * !15�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                             ab�     �               +  expr <- define * space *(';' * expr) * !15�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ab�     �   
            "  define <- >word * ':' * >number:5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             ab�     �   
            *  define <- >word * space * ':' * >number:5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             ab�     �               &doAssert parser.match("a:4", words).ok5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             ab�     �               'doAssert parser.match("a :4", words).ok5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             ab�     �               (doAssert parser.match("a : 4", words).ok5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             ab�    �               'doAssert parser.match("a: 4", words).ok5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ab�    �               3  expr <- define * space *(';' * expr) * space * !15�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ab��     �               3doAssert parser.match("a: 4;b:2;c : 500", words).ok5�_�                       #    ����                                                                                                                                                                                                                                                                                                                                                             ab��    �               4doAssert parser.match("a: 4;b: 2;c : 500", words).ok5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ab�     �               3doAssert parser.match("a: 4;b: 2;c: 500", words).ok5�_�                       6    ����                                                                                                                                                                                                                                                                                                                                                             ab�    �               6if doAssert parser.match("a: 4;b: 2;c: 500", words).ok5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ab�     �               7if doAssert parser.match("a: 4;b: 2;c: 500", words).ok:5�_�                       A    ����                                                                                                                                                                                                                                                                                                                                                             ab��     �               Avar passed = doAssert parser.match("a: 4;b: 2;c: 500", words).ok:5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ab��     �               var words: Table[string, int]5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ab��     �                 
echo words5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ab��     �                echo "Parsing passed."5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ab��     �                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ab��    �               echo "Parsing passed."5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ab��     �               @var passed = doAssert parser.match("a: 4;b: 2;c: 500", words).ok    �               
if passed:    �                echo "Parsing passed."5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ab��     �               @var passed = doAssert parser.match("a: 4;b: 2;c: 500", words).ok5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ab��     �                 5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             ab��   	 �               3doAssert parser.match("a: 4;b: 2;c: 500", words).ok5��
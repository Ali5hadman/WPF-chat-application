   M S B A M L   `   `   `  ����I  EDM_3000_client, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:DM_3000_clientDM_3000_client  5   	       DM_3000_client.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:DM_3000_client     5   	   -   5          � Title$  Client��5   	   $	��450��6   $	��800��6%   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��253* �6   �� 5      $
��167* �6   .+�5   
   �� -   5         ��Name$ wlctxt��5      $
��Left=�6$   $��	38,10,0,0q�6?   $
��Wrap=�6R   $��Client��6f   $	��Top=�6t   $��20(�6�   $
��Bold"�6�   � 5   
   $��2��6   $��
10,0,-10,0q�6     � ColumnDefinitions 5      �� 5      $
��221* �6#   �� 5      $	��44* �6#   �� 5      $
��173* �6#   �� 5      $
��354* �6#    5      �� 5      $��252.8 �6    �� 5      .+�5      �� $
��Left=�6   $��	50,52,0,0q�63   $
��Wrap=�6F   $��Ip��6Z   $	��Top=�6d    J� RenderTransformOrigin$ 0.644,2.005&�6|   $
��Bold"�6�   $��18(�6�   ���	#FFA396426�   �� 5      $
��Left=�6   $��
106,47,0,0q�63   $
��Wrap=�6G   $
��Port��6[   $	��Top=�6g   $ 0.009,0.564&�6   $
��Bold"�6�   $��18(�6�   $��53��6�   $��2��6�   ���	#FFA396426�   �� 5       ���	#FFF4F4F5$
��Left=�6)   $	��187��6D   $��
66,205,0,0q�6Q   
���   �$	��Top=�6t   $	��584��6�   $��2��6�   $��4��6�   �� 5!      ���	#FFF4F4F5$
��Left=�6)   $��60��6D   $��
73,113,0,0q�6P   
���   �$	��Top=�6s   $	��577��6�   $��4��6�   �� 5#      -   5         ��Name$ 
btnConnect��5#      $��Connect��6)   $
��Left=�6;   $��23��6V   $��
226,66,0,0q�6b   $	��Top=�6v   $��87��6�   $��3��6�   
���   ����	#FFA39642$
��Bold"�6�   �� 5$      -   5        $ btnSend��5$      $
��send��6&   $
��Left=�65   $��49��6P   $��226,113,0,0q�6\   $	��Top=�6q   $��91��6�   $ -0.323,1.865&�6�   $��3��6�   ���	#FFA39642$
��Bold"�6�   $��16(�6	  ���	#FF1805056  �� 5'      -   5         ��Name$ txtHost��5'      $
��Left=�6'   $��37��6B   $��	98,46,0,0q�6N    �� TextWrapping$
 Wrap=�6a   $	��Top=�6u   $	��200��6�   $��3��6�   $��	127.0.0.1��6�   �� 5(      -   5        $ txtPort��5(      $
��Left=�6'   $��37��6B   $��
164,46,0,0q�6N   $
 Wrap=�6b   $	��Top=�6v   $	��200��6�   $��2��6�   $��2��6�   $
��8910��6�   �� 5*      -   5        $ 
txtMessage��5*      $
��Left=�6*   $��60��6E   $��
66,113,0,0q�6Q   $
 Wrap=�6e   $	��Top=�6y   $	��584��6�   $��4��6�   $��20(�6�   �� 5+      -   5        $ 	txtStatus��5+      $��4��6)   $
��Left=�6=   $	��186��6X   $��
66,206,0,0q�6e   $��2��6y   $
 Wrap=�6�   $	��Top=�6�   $	��584��6�   $��16(�6�   5-      5/      50      
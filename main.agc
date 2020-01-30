
// Project: Jogo torre de hanoi
// Created: 2019-05-17
// Develop by José Caio

/*
	eu fiz esse jogo no meu primeiro semestre de faculdade, eu so sabia usar as funções mais basicas de uma linguagem 
	mesmo assim consegui aprender muito e desenvolver esse jogo sozinho, não vou melhorar esse jogo porque quero me 
	dedicar a outros projetos.
*/

SetErrorMode(2)
SetWindowTitle( "Torre de hanoi" )
SetWindowSize( 1280, 720, 0 )
SetWindowAllowResize( 1 )


SetVirtualResolution( 1280, 720 ) 
SetOrientationAllowed( 1, 1, 1, 1 )
SetSyncRate(30,0)
SetScissor( 0,0,0,0 ) 
UseNewDefaultFonts( 1 )

	
    
    AddVirtualButton(1,300,205,45)
    SetVirtualButtonAlpha (1,0)
    
    AddVirtualButton(2,575,205,45)
    SetVirtualButtonAlpha (2,0)
    
    AddVirtualButton(3,705,205,45)
    SetVirtualButtonAlpha (3,0)
    
    AddVirtualButton(4,975,205,45)
    SetVirtualButtonAlpha (4,0)
    
    AddVirtualButton(5,385,460,45)
	SetVirtualButtonAlpha (5,0)
    
    AddVirtualButton(6,885,460,45)
    SetVirtualButtonAlpha (6,0)
    
    AddVirtualButton(7,625,460,45)
    SetVirtualButtonAlpha (7,0)
    
    ////////////////Final ////////////////
    
    fundo = LoadImage ( "telafinal.jpg" )
	sprite_fundo = CreateSprite ( fundo )
	SetSpriteSize (sprite_fundo, 1280, 720)
	SetSpriteVisible (sprite_fundo, 0)
    	
    //fundo = LoadImage ( "fundo2.jpg" )
	//sprite_fundo = CreateSprite ( fundo )
	//SetSpriteSize (fundo, 1280, 720)
	SetClearColor ( 255, 255, 255 )
	
	////// Declaração das setas //////////
	
	sa1 = LoadImage ("sa1.png")
	set11 = CreateSprite ( sa1 )
	SetSpriteSize (set11, 50, 50)
	SetSpritePosition(set11, 280, 180)
	
	sg1 = LoadImage ("sg1.png")
	set21 = CreateSprite ( sg1 )
	SetSpriteSize (set21, 50, 50)
	SetSpritePosition(set21, 550, 180)
	
	sg2 = LoadImage ("sg2.png")
	set22 = CreateSprite ( sg2 )
	SetSpriteSize (set22, 50, 50)
	SetSpritePosition(set22, 680, 180)
	
	sv2 = LoadImage ("sv2.png")
	set32 = CreateSprite ( sv2 )
	SetSpriteSize (set32, 50, 50)
	SetSpritePosition(set32, 950, 180)
	

	///////// Declaração das Torres /////
	
	t1 = LoadImage ( "t.jpg" )
	torre1 = CreateSprite ( t1 )
	SetSpriteSize (torre1, 50, 360)
	SetSpritePosition(torre1, 220, 360)
	
	
	t2 = LoadImage ( "t.jpg" )
	torre2 = CreateSprite ( t2 )
	SetSpriteSize (torre2, 50, 360)
	SetSpritePosition(torre2, 620, 360)
	
	t3 = LoadImage ( "t.jpg" )
	torre3 = CreateSprite ( t3 )
	SetSpriteSize (torre3, 50, 360)
	SetSpritePosition(torre3, 1020, 360)
	
	/////// Inserção das Peças /////
	
	pec1 = LoadImage ( "p1.jpg" )
	p1 = CreateSprite ( pec1 )
	SetSpriteSize (p1, 150, 50)
	SetSpritePosition(p1, 165, 565)
	
	pec2 = LoadImage ( "p2.jpg" )
	p2 = CreateSprite ( pec2 )
	SetSpriteSize (p2, 250, 50)
	SetSpritePosition(p2, 110, 616)
	
	pec3 = LoadImage ( "p3.jpg" )
	p3 = CreateSprite ( pec3 )
	SetSpriteSize (p3, 350, 50)
	SetSpritePosition(p3, 65, 669)
	
	//////Declaração das variaveis /////
	
	t1 = 1
	t2 = 0
	t3 = 0
	movimento = 0
	pc1 = 1
	pc2 = 1
	pc3 = 1
	l = 1
	m2 = 0
	d$ = "Quantidade de movimentos: "

do
	
	
	
	if GetVirtualButtonPressed (1) = 1
		
		if pc1 = 1 and t1 = 1 and pc2 <> 2 and pc3 <> 2
			SetSpritePosition (p1, 570, 670)
			movimento = movimento + 1
			t2 = 1
			pc1 = 2
			
			if pc2 = 1 
				t1 = 2
			endif
			
			if pc3 = 1 and pc2 <> 1
				t1 = 3
			endif
			
			if pc2 <> 1 and pc3 <> 1
				t1 = 0
			endif
			
		endif 
		
		if pc1 = 1 and t1 = 1 and pc2 = 2 and pc3 <> 2
			SetSpritePosition (p1, 570, 618)
			movimento = movimento + 1
			t2 = 1
			pc1 = 2
			
			if pc2 = 1 
				t1 = 2
			endif
			
			if pc3 = 1 and pc2 <> 1
				t1 = 3
			endif
			
			if pc2 <> 1 and pc3 <> 1
				t1 = 0
			endif
			
		endif 
			
		if pc1 = 1 and t1 = 1 and t2 = 3 and pc3 = 2 and pc2 <> 2
			
			SetSpritePosition (p1, 570, 618)
			movimento = movimento + 1
			t2 = 1
			pc1 = 2
			
			if pc2 = 1 
				t1 = 2
			endif
			
			if pc3 = 1 and pc2 <> 1
				t1 = 3
			endif
			
			if pc2 <> 1 and pc3 <> 1
				t1 = 0
			endif
			
		endif
		
		if pc1 = 1 and t1 = 1 and pc2 = 2 and pc3 = 2
			
			SetSpritePosition (p1, 570, 565)
			movimento = movimento + 1
			t2 = 1
			pc1 = 2
			
			if pc2 = 1 
				t1 = 2
			endif
			
			if pc3 = 1 and pc2 <> 1
				t1 = 3
			endif
			
			if pc2 <> 1 and pc3 <> 1
				t1 = 0
			endif
			
		endif
		
		if t1 = 2 and pc2 = 1 and pc1 = 3
			
			if t2 <> 1 and pc1 = 3 and pc3 <> 2
				
				SetSpritePosition (p2, 530, 670)
				movimento = movimento + 1
				t2 = 2
				pc2 = 2
				
				if pc3 = 1 and pc2 <> 1
					t1 = 3
				endif
				
				if pc1 <> 1 and pc3 <> 1
					t1 = 0
				endif
				
			endif
		endif
			
			if t2 = 3 and pc3 = 2 and pc1 = 3 and pc2 = 1
				
				SetSpritePosition (p2, 530, 616)
				movimento = movimento + 1
				t2 = 2
				pc2 = 2
				
				
				if pc1 = 1 
					t1 = 1
				endif
				
				if pc1 <> 1
					t1 = 0
				endif
				
			endif
			
		
		if t1 = 3 and pc3 = 1 and pc1 <> 1 and pc2 <> 1 
			
			if t2 = 0 and pc1 <> 2 and pc2 <> 2
				
				SetSpritePosition (p3, 460, 670)
				movimento = movimento + 1
				t1 = 0
				pc3 = 2
				t2 = 3
				
			endif
			
		endif
		
		endif
		
		/////////// IF's do primeiro botão fechado /////////
		
		if GetVirtualButtonPressed (2) = 1
			
			if t2 = 1 and pc1 = 2
				
				if pc2 = 1 and pc3 = 1 and pc1 = 2
					
					SetSpritePosition (p1, 165, 565)
					movimento = movimento + 1
					pc1 = 1
					t1 = 1
					t2 = 0
										
				endif
			endif
				
				if pc2 = 1 and pc3 <> 1 and pc1 = 2 and t2 = 1
					
					SetSpritePosition(p1, 165, 616)
					movimento = movimento + 1
					pc1 = 1
					t1 = 1		
					
					if pc2 = 2
						t2 = 2
					endif
					
					if pc3 = 2 and pc2 <> 2
						t2 = 3
					endif
					
					if pc3 <> 2 and pc2 <> 2
						t2 = 0
					endif			
					
				endif
				
				if pc2 <> 1 and pc3 = 1 and pc1 = 2
					
					SetSpritePosition(p1, 165, 616)
					movimento = movimento + 1
					pc1 = 1
					t1 = 1
					
					if pc2 = 2
						t2 = 2
					endif
					
					if pc3 = 2 and pc2 <> 2
						t2 = 3
					endif
					
					if pc3 <> 2 and pc2 <> 2
						t2 = 0
					endif
					
				endif
				
				if t1 = 0 and pc1 = 2 and pc3 <> 1 and pc2 <> 1
					
					SetSpritePosition(p1, 165, 670)
					movimento = movimento + 1
					pc1 = 1
					t1 = 1
					
					if pc2 = 2
						t2 = 2
					endif
					
					if pc3 = 2 and pc2 <> 2
						t2 = 3
					endif
					
					if pc3 <> 2 and pc2 <> 2
						t2 = 0
					endif
					
				endif				
			
			
			if t2 = 2 and pc2 = 2 and pc1 = 3
				
				if pc3 = 1
					
					SetSpritePosition(p2, 110, 616)
					movimento = movimento + 1
					pc2 = 1
					t1 = 2
					t2 = 0
					
				endif
				
				if pc3 <> 1 and t1 = 0
					
					SetSpritePosition(p2, 110, 669)
					movimento = movimento + 1
					pc2 = 1
					t1 = 2
					
					if pc3 = 2
						t2 = 3
					endif
					
					if pc3 <> 2 and pc2 <> 2 and pc1 <> 2
						t2 = 0
					endif
				endif
				
			endif
			
			if t2 = 3 and pc3 = 2 and t1 = 0 and pc2 = 3 and pc1 = 3
				
				SetSpritePosition(p3, 65, 669)
				movimento = movimento + 1
				pc3 = 1
				t1 = 3
				t2 = 0
				
			endif
			
			endif
			
			//////////// IF's Segundo botão fechados ///////
			
			if GetVirtualButtonPressed (3) = 1
				
				if pc1 = 2 and t2 = 1
					
					if t3 = 0 
						
						SetSpritePosition (p1, 970, 670)
						movimento = movimento + 1
						pc1 = 3
						t3 = 1
					
						if pc2 = 2
							t2 = 2
						endif
					
						if pc2 <> 2 and pc3 <> 2
							t2 = 0
						endif
					
						if pc3 = 2 and pc2 <> 2
							t2 = 3
						endif
					endif
					
					if t3 = 2 and pc2 = 3 and pc3 = 3
						
						SetSpritePosition (p1, 970, 565)
						movimento = movimento + 1
						pc1 = 3
						t3 = 1
						
						if pc2 = 2
							t2 = 2
						endif
					
						if pc2 <> 2 and pc3 = 2
							t2 = 3
						endif
					
						if pc3 <> 2 and pc2 <> 2
							t2 = 0
						endif
						
					endif
					
					if t3 = 2 and pc2 = 3 and pc3 <> 3
						
						SetSpritePosition (p1, 970, 616)
						movimento = movimento + 1
						pc1 = 3
						t3 = 1
						
						if pc2 = 2
							t2 = 2
						endif
					
						if pc2 <> 2 and pc3 <> 2
							t2 = 0
						endif
					
						if pc3 = 2 and pc2 <> 2
							t2 = 3
						endif
						
					endif
					
					if t3 = 3 and pc3 = 3 and pc2 <> 3
						
						SetSpritePosition (p1, 970, 616)
						movimento = movimento + 1
						pc1 = 3
						t3 = 1
						
						if pc2 = 2
							t2 = 2
						endif
					
						if pc2 <> 2 and pc3 <> 2
							t2 = 0
						endif
					
						if pc3 = 2 and pc2 <> 2
							t2 = 3
						endif
						
					endif
					
				endif
				
				if pc2 = 2 and t2 = 2 and pc1 = 1 and pc3 = 1
					
					SetSpritePosition(p2, 920, 670)
					movimento = movimento + 1
					pc2 = 3
					t3 = 2
					
						if pc3 = 2 and pc1 <> 2
							t2 = 3
						endif
					
						if pc1 = 2
							t2 = 1
						endif
					
						if pc3 <> 2 and pc1 <> 2
							t2 = 0
						endif
					
				endif
				
				if pc2 = 2 and t2 = 2 and pc1 = 1 and t3 = 0 and pc3 <> 3
					
					SetSpritePosition(p2, 920, 670)
					movimento = movimento + 1
					pc2 = 3
					t3 = 2
					
						if pc3 = 2 and pc1 <> 2
							t2 = 3
						endif
					
						if pc1 = 2
							t2 = 1
						endif
					
						if pc3 <> 2 and pc1 <> 2
							t2 = 0
						endif
					
				endif
				
				if t2 = 2 and pc2 = 2 and t3 = 3 and pc3 = 3 and pc1 = 1
					
					SetSpritePosition(p2, 920, 618)
					movimento = movimento + 1
					pc2 = 3
					t3 = 2
					
						if pc3 = 2 and pc1 <> 2
							t2 = 3
						endif
					
						if pc1 = 2
							t2 = 1
						endif
					
						if pc3 <> 2 and pc1 <> 2
							t2 = 0
						endif
					
				endif
				
				if t2 = 3 and pc3 = 2 and t3 = 0 and pc2 = 1 and pc1 = 1
					
					SetSpritePosition(p3, 870, 670)
					movimento = movimento + 1
					pc3 = 3
					t3 = 3
					
						if pc2 = 2 and pc1 <> 2
							t2 = 2
						endif
					
						if pc1 = 2
							t2 = 1
						endif
					
						if pc2 <> 2 and pc1 <> 2
							t2 = 0
						endif
					
				endif
				
			endif
			
			///////// IF's do botão 3 fechados //////
			
			if GetVirtualButtonPressed (4) = 1
				
				if pc1 = 3 and t3 = 1
					
					if t2 = 0 and pc2 <> 2 and pc3 <> 2
						
						SetSpritePosition (p1, 570, 670)
						movimento = movimento + 1
						t2 = 1
						pc1 = 2
						
						if pc2 = 3
							t3 = 2
						endif
						
						if pc3 = 3 and pc2 <> 3
							t3 = 3
						endif
						
						if pc2 <> 3 and pc3 <> 3
							t3 = 0
						endif
						
					endif
					
					if t2 = 2 and pc2 = 2 and pc3 <> 2
						
						SetSpritePosition (p1, 570, 618)
						movimento = movimento + 1
						t2 = 1
						pc1 = 2
						
						if pc2 = 3
							t3 = 2
						endif
						
						if pc3 = 3 and pc2 <> 3
							t3 = 3
						endif
						
						if pc2 <> 3 and pc3 <> 3
							t3 = 0
						endif
						
					endif
					
					if t2 = 2 and pc2 = 2 and pc3 = 2
						
						SetSpritePosition (p1, 570, 565)
						movimento = movimento + 1
						t2 = 1
						pc1 = 2
						
						if pc2 = 3
							t3 = 2
						endif
						
						if pc3 = 3 and pc2 <> 3
							t3 = 3
						endif
						
						if pc2 <> 3 and pc3 <> 3
							t3 = 0
						endif
						
					endif 
					
					if pc3 = 2 and t2 = 3 and pc2 <> 2
						
						SetSpritePosition (p1, 570, 618)
						movimento = movimento + 1
						t2 = 1
						pc1 = 2
						
						if pc2 = 3
							t3 = 2
						endif
						
						if pc3 = 3 and pc2 <> 3
							t3 = 3
						endif
						
						if pc2 <> 3 and pc3 <> 3
							t3 = 0
						endif
						
					endif
					
				endif
				
				if pc2 = 3 and t3 = 2 and t2 = 0 and pc1 = 1 and pc3 <> 2
					
					SetSpritePosition (p2, 525, 670)
					movimento = movimento + 1
					pc2 = 2
					t2 = 2
					
						if pc3 = 3 and pc1 <> 3
							t3 = 3
						endif
					
						if pc1 = 3
							t3 = 1
						endif
					
						if pc3 <> 3 and pc1 <> 3
							t3 = 0
						endif
					
				endif
				
				if pc2 = 3 and t3 = 2 and pc3 = 2 and t2 = 3 and pc1 = 1
					
					SetSpritePosition (p2, 525, 618)
					movimento = movimento + 1
					pc2 = 2
					t2 = 2
					
						if pc3 = 3 and pc1 <> 3
							t3 = 3
						endif
					
						if pc1 = 3
							t3 = 1
						endif
					
						if pc3 <> 3 and pc1 <> 3
							t3 = 0
						endif
					
				endif
				
				if t3 = 3 and pc3 = 3 and pc1 = 1 and pc2 = 1
					
					SetSpritePosition (p3, 460, 670)
					movimento = movimento + 1
					pc3 = 2
					t2 = 3
					
					if pc1 = 3
						t3 = 1
					endif
					
					if pc2 = 2 and pc1 <> 3
						t3 = 2
					endif
					
					if pc2 <> 3 and pc1 <> 3
						t3 = 0
					endif
					
				endif
				
			endif
	
	//////// final do jogo //////
	
	/*if (pc3 = 3 and pc2 = 3 and pc1 = 3 and l = 1)
		
		SetSpriteVisible (sprite_fundo, 1)
		//SetVirtualButtonAlpha (5,100)
		SetVirtualButtonAlpha (6,100)
		
		m2 = movimento
		
		print (d$)
		print (m2)
		
		
		if GetVirtualButtonPressed(5) = 1
			
			SetSpriteVisible (sprite_fundo,0)
			movimento = 0
			l = 2
			SetVirtualButtonAlpha (5,0)
			SetVirtualButtonAlpha (6,0)
			
		endif
		
		if GetVirtualButtonPressed(6) = 1 
			end
		endif
		
	endif */
	
	if (pc3 = 3 and pc2 = 3 and pc1 = 3 and l = 1)
		
		
		over = LoadImage ( "fim2.jpg" )
		go = CreateSprite ( over )
		SetSpriteSize (go, 1280, 720)
		
		Print (d$)
		Print (movimento)
		
		SetVirtualButtonAlpha (7,100)
		
		if GetVirtualButtonPressed (7) = 1
			end
		endif
		
		if GetVirtualButtonPressed(6) = 1 
			end
		endif
		
	endif
	

    Sync()
loop

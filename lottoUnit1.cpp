//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "lottoUnit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
	ListBox1->Clear();
	ListBox1->Visible = false;

	Randomize();

	//invisible panel and listbox to store the lottery numbers into the listbox
	Panel3->Visible = false;
	ListBox2->Visible = false;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
	//initialize
	AnsiString nums, num, powerB;

	//make sure the listbox is empty first
	ListBox1->Clear();

	//generate random numbers
	while(ListBox1->Count < 5)
	{
		//randomize
		num = 1 + Random(49);

		//make sure no number is repeating
		if (ListBox1->Items->IndexOf(num) < 0)
		{
			nums = nums + "   " + num;
			ListBox1->Items->Add(nums);
		}
	}
	//generate bonus number
	powerB = 1 + Random(19);

	//display the numbers
	Panel1->Caption = nums + " : " + powerB;

	ListBox1->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
	AnsiString nums, num;

	//clear the listbox first
	ListBox2->Clear();
	ListBox1->Clear();

	for (int i = 1; i <= ComboBox1->ItemIndex +1; i++)
	{
		while(ListBox2->Count < 5)
		{
			//randomize
			num = 1 + Random(49);

			//make sure no number is repeating
			if (ListBox2->Items->IndexOf(num) < 0)
			{
				nums = nums + "    " + num;

			}
			ListBox2->Items->Add(nums);
		}
		//Generate a bonus ball
		AnsiString bonus;
		bonus = 1 + Random(19);

		//put the numbers on the panel in order to add into the listbox
		Panel3->Caption = nums + "   " + "   :   " + bonus;

		//clear the last 5 numbers to store new
		nums = "";

		//clear the listbox
		ListBox2->Clear();

		//add the numbers to the listbox
		ListBox1->Items->Add(Panel3->Caption);
	}
	//make the listbox visible
	ListBox1->Visible = true;
}
//---------------------------------------------------------------------------




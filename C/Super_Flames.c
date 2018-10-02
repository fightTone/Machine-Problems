#include<stdio.h>
#include<string.h>
#define size 50

int nam1(char name1[]);
int nam2(char name2[]);
void lowercase(char name1[],char name2[]);
int countmatch(char name1[], char name2[]);
int countmatch2(char name1[], char name2[]);
void unmatch( char name1[], char name2[]);
void unmatch2( char name1[], char name2[]);
int remover(char name1[], char name2[]);
int flameburner(int x, char flame[]);




int main ()
{
    printf("\t\t______________________________________________________\n");
    printf("\t\t___*****_*_______*_____*______*___*******___********____\n");
    printf("\t\t___*_____*______*_*____**____**___*_________*______________\n");
    printf("\t\t___****__*_____*****___*_*__*_*___*****_____********_________\n");
    printf("\t\t___*_____*____*_____*__*__**__*___*________________*_______\n");
    printf("\t\t___*_____*****_______*_*______*___*******___********____\n");
    printf("\t\t_____________________________________________________\n");

    int cont =1;
    do{
    char name1[size];
    char name2[size];
    char match[size];
    char match2[size];
    char flame[size]="FLAMES";

    printf("\nenter name 1: ");
    gets(name1);

    printf("\nenter name 2: ");
    gets(name2);

    printf("\n\n%s=%d\n", name1, nam1(name1));
    printf("\n\n%s=%d\n", name2, nam2(name2));

    lowercase(name1,name2);


//    printf("\n");
//    countmatch(name1, name2);
//    printf("\n");
//    countmatch2(name1, name2);
    printf("\n\n  Matched Letters:");
    printf("\n");
    int a=countmatch(name1,name2);
    printf("\n");
    int b=countmatch2(name1,name2);
    printf("\n\n");
    int x= a+b;
    printf("Flamecount %d", x);
    printf("\n\n  Unmatch Letters:");
    printf("\n");
    unmatch(name1,name2);
    printf("\n");
    unmatch2(name1,name2);
    printf("\n");
    //remover(name1,name2);

    printf("\n\n\n\tN0w Time to Face The Reality");

    flameburner( x, flame);
    char trash;
    printf("\n\n\t\tdo you want to play again? \n\t\t (0) for no (1) for yes:  ");
    scanf("%d", &cont);
    scanf("%c", &trash);
//    if(cont !=0 || cont != 1 ){
//
//        printf("\n\nBUGO jud ka noh? okay ako nalang mag adjust...\nsagdi lang, anad naman sad kong permi mag adjust :P");
//        char trash;
//        printf("\n\n\t\tdo you want to play again? \n\t\t (0) for no (1) for yes:  ");
//        scanf("%d", &cont);
//        scanf("%c", &trash);
//    }

}while(cont==1);

    return 0;
}

void lowercase(char name1[],char name2[])
{
    int i=0;
    while(name1[i]!='\0')
    {
        if((name1[i]>=65)&&(name1[i]<=90))
        {
            name1[i]=name1[i]+32;

            i++;
        }
        else i++;
    }

    i=0;
    while(name2[i]!='\0')
    {
       if((name2[i]>=65)&&(name2[i]<=90))
       {
           name2[i]=name2[i]+32;
           i++;
       }
       else i++;
    }

}



int nam1(char name1[])
{

    int i=0, count=0;
    while(name1[i]!='\0')
    {
        if(name1[i]==' ')
        {
            i++;
        }
        else
        {
            count++;
            i++;
        }
    }

    return count;
}

int nam2(char name2[])
{
    int i=0, count=0;
    while(name2[i]!='\0')
    {
        if(name2[i]==' ')
        {
            i++;
        }
        else
        {
            count++;
            i++;
        }
    }

    return count;
}

int countmatch(char name1[], char name2[])
{
    int i=0,k=0, count=0;

    while (name1[i]!='\0')
    {

        int j=0;
        while(name2[j]!='\0')
        {
                if (name1[i] == name2[j])
                {

                    if(name2[j]==' ')
                    {
                        j++;
                    }
                    else
                    {

                        printf(" %c", name1[i]);
                        count++;
                        k++;
                       break;
                    }

                }

                else{j++;}
        }

      i++;
    }

    printf(" - %d",count);
    return count;
}

int countmatch2(char name1[], char name2[])
{
    int i=0, k=0, count=0;
    while (name2[i]!='\0')
    {

        int j=0;
        while(name1[j]!='\0')
        {
                if (name2[i] == name1[j])
                {

                    if(name1[j]==' ')
                    {
                        j++;
                    }
                    else
                    {

                        printf(" %c", name2[i]);
                        count++;
                       break;
                    }

                }

                else{j++;}
        }

      i++;
    }


    printf(" - %d",count);
    return count;
}




void unmatch( char name1[], char name2[])
{
    int i=0, j=0, count=0;
    while (name1[i]!='\0')
    {
        j=0;
        while (name2[j]!='\0'+1)
        {
            if(name1[i]==name2[j])
            {
                break;
            }
            else

                if(name2[j]!='\0')
                {
                    j++;
                }
                else if(name2[j]=='\0')
                {
                    printf(" %c ", name1[i]);
                    count++;


                    break;

                }
                else;
        }


        i++;
    }
        printf("= %d", count);
}

void unmatch2( char name1[], char name2[])
{
    int i=0, j=0, count=0;
    while (name2[i]!='\0')
    {
        j=0;
        while (name1[j]!='\0'+1)
        {
            if(name2[i]==name1[j])
            {
                break;
            }
            else

                if(name1[j]!='\0')
                {
                    j++;
                }
                else if(name1[j]=='\0')
                {
                    printf(" %c ", name2[i]);
                    count++;


                    break;

                }
                else;
        }


        i++;
    }
        printf("= %d", count);
}

//int remover(char name1[], char name2[])
//{
//    int i=0,count=0;
//    while(name1[i]!='\0')
//    {
//        int j=0;
//        printf("%i,%i",i,j);
//        while(name1[j]!='\0')
//        {
//            if(i=j)
//                j++;
//
//            else
//            {
//                if(name1[i]==name1[j])
//                    {
//                        printf("\n%c", name1[i]);
//                        count++;
//                        printf("%d letter\n", count);
//                        break;
//                    }
//                    else
//                        j++;
//
//            }
//
//        }
//
//        i++;
//    }
//    return count;
//}
int flameburner(int x, char flame[])
{
int n=x;
int burn=6;
int rem=0;int j=0;
 while(burn!=1)
  {
     printf("\n\t\t%s",flame);
    int i=0;
      while(i!=x)
      {
          if(flame[j]==' ')
          {
            j++;
           continue;
          }
          if(flame[j]=='\0')
          {
              j=j-6;
              if(flame[j]==' ')
              {
                    j++;
                    continue;
              }
              if(i==n-1)
              {
                  flame[j]=' ';
                  i++;

              }
              else{
              i++;
              j++;}
          }
          else
          {


                if(i==n-1)
              {
                  flame[j]=' ';
                  i++;
              }
              else{i++;
              j++;}

          }
      }


      burn--;
  }


    printf("\n\n\t\t}--wheeee--> [%s]\n",flame);
    printf("\n\t   LEFT or RIGHT? \n\n tip: when you go LEFT nobody's right, \n    \twhen you go RIGHT nobody's left\n\n  choose the right one:");
    int destiny=0;
    while(flame[destiny]!='\0')
    {
        if(flame[destiny]==' ')
            destiny++;

        else if(flame[destiny]=='F')
        {
            int ernet;
                printf("\n\tOne(1) or zero (0)\n\n    {1} <3---E> {0}       \t    ");
                scanf("\t\t%d", &ernet );
                if (ernet == 0){printf("\nF --->FRIENDS ... i feel yah bruh... \n yea yeah...it's ok i know how it feels xD :'( ");}
                else if (ernet ==1 ){printf("\nF ---> FOREVER (ayie~e~e)");}
                else
                {printf("\n   BUGO! 1 or 0 ra oi! nangita paka'g lain?....\n   mao na.. maong walay forever \n   kai mangita paman gud ug lain...\nBUGO PAKA sa GUGMA magBINUGO pajud ka'g basa's INSTRUCTION\n\n");}
                break;
        }
        else if(flame[destiny]=='L')
            {
                int ernet;
                printf("\n\tOne(1) or zero (0)\n\n    {1} <3---E> {0}\n      \t    ");
                scanf("\t\t%d", &ernet );
                if (ernet == 0){printf("\nL ---> LOSER L.O.L. (stop assuming) mabibigo ka lang !!!");}
                else if (ernet ==1 ){printf("\nL ---> LOVERS (ayie~e~e)");}
                else
                {printf("\n   BUGO! 1 or 0 ra oi! nangita paka'g lain?.... \n   mao na.. maong walay forever \n   kai mangita paman gud ug lain...\nBUGO PAKA sa GUGMA magBINUGO pajud ka'g basa's INSTRUCTION\n\n");}
                break;
            }
        else if(flame[destiny]=='A')
            {int ernet;
                printf("\n\tOne(1) or zero (0)\n\n    {1} <3---E> {0}\n       \t   ");
                scanf("\t\t%d", &ernet );
                if (ernet == 0){printf("\nA ---> ASSUMING. ( ass.shoo!!! ming) \n Oooooh... SAKITAN KA NOH? nwahahahahah XD");}
                else if (ernet ==1 ){printf("\nA ---> ABYSSAL (Definition: resembling an abyss in depth;\n so deep as to be unmeasurable.\nsorry pero murag wala nakoi mahuna-hunan lain kana nalang kay\n unmeasurable man daw iya gugma ... ewww hilas XD\ngawas nalang kung gusto ka ABUSIVE nah...\n pwede japon, kaw bahalaaaaa... xD, Bruhahahaha!)");}
                else
                {printf("\n   BUGO! 1 or 0 ra oi! nangita paka'g lain?.... mao na.. \n   maong walay forever\nkai mangita paman gud ug lain...\nBUGO PAKA sa GUGMA magBINUGO pajud ka'g basa's INSTRUCTION\n\n");}
                break;
            }
        else if(flame[destiny]=='M')
            {
               int ernet;
                printf("\n\tOne(1) or zero (0)\n\n    {1} <3---E> {0}\n       \t   ");
                scanf("\t\t%d", &ernet );
                if (ernet == 0){printf("\nM ---> MALNOURISHED MADAFAKAAAA!!! \nwahahahah way poreber oi, POOR EVER nuon XD\n di mo mabuhi kung puro gugma2  XD\n unsa na teleserye nga \n bahalag saging, basta labing, \n wahahaha wait, na pay isa katung..\n bahalag bulad, basta naay subad\n malnourished inyung mga anak ahahaha ,./.,");}
                else if (ernet ==1 ){printf("\nM ---> MARRIAGE  (ayiieee~e~e <3)");}
                else
                {printf("\n   BUGO! 1 or 0 ra oi nangita paka'g lain?.... mao na..\n    maong walay forever\n    kai mangita paman gud ug lain...\nBUGO PAKA sa GUGMA magBINUGO pajud ka'g basa's INSTRUCTION\n\n\n");}
                break;
            }
        else if(flame[destiny]=='E')
            {
                int ernet;
                printf("\n\tOne(1) or zero (0)\n\n    {1} <3---E> {0}\n       \t   ");
                scanf("\t\t%d", &ernet );
                if (ernet == 0){printf("\nE --->EGGNOG uhhm... ??? Eggnong man siguro to? \nnalimot ko. wala koi mahuna-huna an\n basta isa kang itlog wahahahaha \n ENEMY kala mo haaa....\n kala mo nakalimutan ko meaning nyan sa FLAMES wahahaha\n kala mo lang yun! ");}
                else if (ernet ==1 ){printf("\nE --->ETERNAL FLAME (special case) ni siya wahahaha\n\n ayii~e~e~eh \n\n   ");}
                else
                {printf("\n   BUGO! 1 or 0 ra oi! nangita paka'g lain?.... mao na..\n    maong walay forever\n    kai mangita paman gud ug lain...\nBUGO PAKA sa GUGMA magBINUGO pajud ka'g basa's INSTRUCTION\n\n");}
                break;
            }
        else if(flame[destiny]=='S')
            {
                int ernet;
                printf("\n\tOne(1) or zero (0)\n\n    {1} <3---E> {0}\n       \t   ");
                scanf("\t\t%d", &ernet );
                if (ernet == 0){printf("S --->SHIT, SAD, STUPID, SO, STOP assuming \n(ahahahah :D )");}
                else if (ernet ==1 ){printf("S --->SWEET HEARTS  ayie~e~e dili mo lamigason pero wakwakon mo ana... \n kai sweet kayu ingyung heart");}
                else
                {printf("\n   BUGO! 1 or 0 ra oi! nangita paka'g lain?.... mao na..\n    maong walay forever kai mangita paman gud ug lain...\nBUGO PAKA sa GUGMA magBINUGO pajud ka'g basa's INSTRUCTION\n\n");}
                break;
            }
        else;

    }
}



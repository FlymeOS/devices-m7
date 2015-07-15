.class Landroid/text/method/CharacterPickerDialog$StringPickerDialog;
.super Landroid/text/method/CharacterPickerDialog;
.source "CharacterPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/CharacterPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringPickerDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/CharacterPickerDialog$StringPickerDialog$OptionsAdapterSPD;
    }
.end annotation


# static fields
.field private static final KEYBOARD_PICKER_DIALOG_INPUT:C = '\uef06'

.field private static KEYBOARD_SETS:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPECIAL_KEYS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPECIAL_KEY_CAPS:Ljava/lang/String; = "\u21a5"

.field private static final SPECIAL_KEY_DELETE:Ljava/lang/String; = "\u2190"

.field private static final SPECIAL_KEY_DPAD_DOWN:Ljava/lang/String; = "\u21e3"

.field private static final SPECIAL_KEY_DPAD_LEFT:Ljava/lang/String; = "\u21e0"

.field private static final SPECIAL_KEY_DPAD_RIGHT:Ljava/lang/String; = "\u21e2"

.field private static final SPECIAL_KEY_DPAD_UP:Ljava/lang/String; = "\u21e1"

.field private static final SPECIAL_KEY_ENTER:Ljava/lang/String; = "\u21b2"

.field private static final SPECIAL_KEY_SPACE:Ljava/lang/String; = "\u3129"

.field private static final SPECIAL_KEY_SWITCH2ABC:Ljava/lang/String; = "\uff21"

.field private static final SPECIAL_KEY_SWITCH2SYM:Ljava/lang/String; = "\uff03"

.field private static final SYMBOLKB_PICKER_DIALOG_INPUT:C = '\uef07'

.field private static keyboard:[Ljava/lang/String;

.field private static symbolkb:[Ljava/lang/String;


# instance fields
.field private mGridView:Landroid/widget/GridView;

.field private mIsUpperCase:Z

.field private mOptionSet:[Ljava/lang/String;

.field private mType:C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->SPECIAL_KEYS:Ljava/util/ArrayList;

    .line 203
    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "2"

    aput-object v1, v0, v5

    const-string v1, "3"

    aput-object v1, v0, v6

    const-string v1, "4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "9"

    aput-object v2, v0, v1

    const-string v1, "0"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string/jumbo v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "\u21a5"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "\u21e1"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "\u2190"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "\uff03"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "\u3129"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "\u21e0"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "\u21e3"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "\u21e2"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "\u21b2"

    aput-object v2, v0, v1

    sput-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->keyboard:[Ljava/lang/String;

    .line 208
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "!"

    aput-object v1, v0, v4

    const-string v1, "@"

    aput-object v1, v0, v5

    const-string v1, "#"

    aput-object v1, v0, v6

    const-string v1, "$"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "%"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "^"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "&"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "("

    aput-object v2, v0, v1

    const-string v1, ")"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "\uff21"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "`"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "\u20ac"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "\u00a5"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "\u00a3"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "\u00a2"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "\u00a6"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "\u00a7"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "\u2026"

    aput-object v2, v0, v1

    sput-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->symbolkb:[Ljava/lang/String;

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->KEYBOARD_SETS:Landroid/util/SparseArray;

    .line 338
    sget-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->KEYBOARD_SETS:Landroid/util/SparseArray;

    const v1, 0xef06

    sget-object v2, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->keyboard:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    sget-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->KEYBOARD_SETS:Landroid/util/SparseArray;

    const v1, 0xef07

    sget-object v2, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->symbolkb:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    sget-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->SPECIAL_KEYS:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u2190"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->SPECIAL_KEYS:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u21b2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->SPECIAL_KEYS:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u3129"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->SPECIAL_KEYS:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u21e1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->SPECIAL_KEYS:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u21e3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->SPECIAL_KEYS:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u21e0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->SPECIAL_KEYS:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u21e2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->SPECIAL_KEYS:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u21a5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->SPECIAL_KEYS:Ljava/util/ArrayList;

    const-string/jumbo v1, "\uff03"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->SPECIAL_KEYS:Ljava/util/ArrayList;

    const-string/jumbo v1, "\uff21"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;[Ljava/lang/String;ZI)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "text"    # Landroid/text/Editable;
    .param p4, "optionSet"    # [Ljava/lang/String;
    .param p5, "insert"    # Z
    .param p6, "kbFlag"    # I

    .prologue
    const v6, 0xef07

    const v7, 0xef06

    const/4 v8, 0x0

    .line 220
    aget-object v4, p4, v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    .line 216
    iput-boolean v8, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mIsUpperCase:Z

    .line 222
    iput-object p4, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mOptionSet:[Ljava/lang/String;

    .line 223
    const/4 v0, 0x3

    if-ne p6, v0, :cond_2

    move v0, v6

    :goto_0
    iput-char v0, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mType:C

    .line 224
    iget-char v0, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mType:C

    if-eq v0, v7, :cond_0

    iget-char v0, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mType:C

    if-ne v0, v6, :cond_1

    .line 225
    :cond_0
    iput-boolean v8, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mNeedToDismiss:Z

    .line 226
    :cond_1
    return-void

    :cond_2
    move v0, v7

    .line 223
    goto :goto_0
.end method

.method static synthetic access$200(Landroid/text/method/CharacterPickerDialog$StringPickerDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/text/method/CharacterPickerDialog$StringPickerDialog;

    .prologue
    .line 188
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mOptionSet:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/text/method/CharacterPickerDialog$StringPickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Landroid/text/method/CharacterPickerDialog$StringPickerDialog;

    .prologue
    .line 188
    iget-boolean v0, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mIsUpperCase:Z

    return v0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->SPECIAL_KEYS:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getKBset(I)[Ljava/lang/String;
    .locals 2
    .param p0, "kbFlag"    # I

    .prologue
    .line 229
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const v0, 0xef07

    .line 230
    .local v0, "type":C
    :goto_0
    sget-object v1, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->KEYBOARD_SETS:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 229
    .end local v0    # "type":C
    :cond_0
    const v0, 0xef06

    goto :goto_0
.end method

.method private sendKeyEvent(I)V
    .locals 13
    .param p1, "keyEventCode"    # I

    .prologue
    .line 295
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 296
    .local v2, "eventTime":J
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mView:Landroid/view/View;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 298
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mView:Landroid/view/View;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 300
    return-void
.end method

.method private updateKeyboard(Z)V
    .locals 2
    .param p1, "isToABCkb"    # Z

    .prologue
    .line 290
    sget-object v1, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->KEYBOARD_SETS:Landroid/util/SparseArray;

    if-eqz p1, :cond_0

    const v0, 0xef06

    :goto_0
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mOptionSet:[Ljava/lang/String;

    .line 291
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    .line 292
    return-void

    .line 290
    :cond_0
    const v0, 0xef07

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 258
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_b

    move-object v1, p1

    .line 259
    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 260
    .local v0, "result":Ljava/lang/CharSequence;
    const-string/jumbo v1, "\u2190"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->sendKeyEvent(I)V

    .line 287
    .end local v0    # "result":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 262
    .restart local v0    # "result":Ljava/lang/CharSequence;
    :cond_0
    const-string/jumbo v1, "\u21b2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    const/16 v1, 0x42

    invoke-direct {p0, v1}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->sendKeyEvent(I)V

    goto :goto_0

    .line 264
    :cond_1
    const-string/jumbo v1, "\u3129"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->sendKeyEvent(I)V

    goto :goto_0

    .line 266
    :cond_2
    const-string/jumbo v1, "\u21e1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->sendKeyEvent(I)V

    goto :goto_0

    .line 268
    :cond_3
    const-string/jumbo v1, "\u21e3"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 269
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->sendKeyEvent(I)V

    goto :goto_0

    .line 270
    :cond_4
    const-string/jumbo v1, "\u21e0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 271
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->sendKeyEvent(I)V

    goto :goto_0

    .line 272
    :cond_5
    const-string/jumbo v1, "\u21e2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 273
    const/16 v1, 0x16

    invoke-direct {p0, v1}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->sendKeyEvent(I)V

    goto :goto_0

    .line 274
    :cond_6
    const-string/jumbo v1, "\u21a5"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 275
    iget-boolean v1, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mIsUpperCase:Z

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mIsUpperCase:Z

    .line 276
    invoke-direct {p0, v2}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->updateKeyboard(Z)V

    goto :goto_0

    :cond_7
    move v1, v3

    .line 275
    goto :goto_1

    .line 278
    :cond_8
    const-string/jumbo v1, "\uff03"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 279
    invoke-direct {p0, v3}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->updateKeyboard(Z)V

    goto :goto_0

    .line 280
    :cond_9
    const-string/jumbo v1, "\uff21"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 281
    invoke-direct {p0, v2}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->updateKeyboard(Z)V

    goto/16 :goto_0

    .line 283
    :cond_a
    invoke-super {p0, p1}, Landroid/text/method/CharacterPickerDialog;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 286
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_b
    invoke-super {p0, p1}, Landroid/text/method/CharacterPickerDialog;->onClick(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 235
    invoke-super {p0, p1}, Landroid/text/method/CharacterPickerDialog;->onCreate(Landroid/os/Bundle;)V

    .line 237
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109003a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    const v1, 0x10202de

    invoke-virtual {p0, v1}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mGridView:Landroid/widget/GridView;

    .line 241
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mGridView:Landroid/widget/GridView;

    new-instance v2, Landroid/text/method/CharacterPickerDialog$StringPickerDialog$OptionsAdapterSPD;

    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog$OptionsAdapterSPD;-><init>(Landroid/text/method/CharacterPickerDialog$StringPickerDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 243
    iget-char v1, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mType:C

    const v2, 0xef06

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mType:C

    const v2, 0xef07

    if-ne v1, v2, :cond_1

    .line 244
    :cond_0
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mGridView:Landroid/widget/GridView;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 246
    :cond_1
    const v1, 0x10202df

    invoke-virtual {p0, v1}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mCancelButton:Landroid/widget/Button;

    .line 247
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mCancelButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 253
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mOptionSet:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method

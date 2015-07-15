.class Landroid/text/method/CharacterPickerDialog$StringPickerDialog$OptionsAdapterSPD;
.super Landroid/widget/BaseAdapter;
.source "CharacterPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/CharacterPickerDialog$StringPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsAdapterSPD"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/CharacterPickerDialog$StringPickerDialog;


# direct methods
.method public constructor <init>(Landroid/text/method/CharacterPickerDialog$StringPickerDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    iput-object p1, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/text/method/CharacterPickerDialog$StringPickerDialog;

    .line 305
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 306
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/text/method/CharacterPickerDialog$StringPickerDialog;

    # getter for: Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mOptionSet:[Ljava/lang/String;
    invoke-static {v0}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->access$200(Landroid/text/method/CharacterPickerDialog$StringPickerDialog;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 328
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/text/method/CharacterPickerDialog$StringPickerDialog;

    # getter for: Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mOptionSet:[Ljava/lang/String;
    invoke-static {v0}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->access$200(Landroid/text/method/CharacterPickerDialog$StringPickerDialog;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 333
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 310
    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/text/method/CharacterPickerDialog$StringPickerDialog;

    # getter for: Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mOptionSet:[Ljava/lang/String;
    invoke-static {v2}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->access$200(Landroid/text/method/CharacterPickerDialog$StringPickerDialog;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/text/method/CharacterPickerDialog$StringPickerDialog;

    # getter for: Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mOptionSet:[Ljava/lang/String;
    invoke-static {v2}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->access$200(Landroid/text/method/CharacterPickerDialog$StringPickerDialog;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, p1

    .line 311
    .local v1, "text":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/text/method/CharacterPickerDialog$StringPickerDialog;

    # getter for: Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mIsUpperCase:Z
    invoke-static {v2}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->access$300(Landroid/text/method/CharacterPickerDialog$StringPickerDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 312
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 313
    :cond_0
    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/text/method/CharacterPickerDialog$StringPickerDialog;

    iget-object v2, v2, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x109003b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 314
    .local v0, "b":Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog$StringPickerDialog$OptionsAdapterSPD;->this$0:Landroid/text/method/CharacterPickerDialog$StringPickerDialog;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    # getter for: Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->SPECIAL_KEYS:Ljava/util/ArrayList;
    invoke-static {}, Landroid/text/method/CharacterPickerDialog$StringPickerDialog;->access$400()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    const v2, -0xffff01

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 318
    :cond_1
    return-object v0

    .line 310
    .end local v0    # "b":Landroid/widget/Button;
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

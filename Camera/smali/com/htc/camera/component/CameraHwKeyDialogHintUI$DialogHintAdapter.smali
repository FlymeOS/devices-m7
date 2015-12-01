.class Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;
.super Landroid/widget/BaseAdapter;
.source "CameraHwKeyDialogHintUI.java"


# instance fields
.field private final m_CameraActivity:Lcom/htc/camera/HTCCamera;

.field private m_OptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_currentSelectedItem:I

.field private m_hasdescription:Z

.field final synthetic this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/CameraHwKeyDialogHintUI;Lcom/htc/camera/HTCCamera;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/HTCCamera;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->this$0:Lcom/htc/camera/component/CameraHwKeyDialogHintUI;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    .line 83
    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_OptionList:Ljava/util/List;

    .line 84
    iput-boolean p4, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_hasdescription:Z

    .line 85
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_hasdescription:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_currentSelectedItem:I

    .line 86
    return-void

    .line 83
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setPrimaryText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 185
    if-nez p2, :cond_0

    .line 187
    invoke-virtual {p1, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setVisibility(I)V

    .line 214
    :goto_0
    return v0

    .line 192
    :cond_0
    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setVisibility(I)V

    .line 194
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 196
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 197
    if-lez v0, :cond_1

    .line 198
    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 214
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p1, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setVisibility(I)V

    goto :goto_1

    .line 202
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 205
    check-cast p2, Ljava/lang/String;

    .line 206
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 207
    invoke-virtual {p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1

    .line 209
    :cond_3
    invoke-virtual {p1, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setVisibility(I)V

    goto :goto_1

    .line 212
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_OptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_OptionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_OptionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 114
    if-gtz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_hasdescription:Z

    if-nez v0, :cond_1

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 121
    .line 122
    if-eqz p2, :cond_7

    .line 124
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 125
    instance-of v2, v0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;

    if-eqz v2, :cond_3

    .line 126
    check-cast v0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->getItemViewType(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 134
    if-nez p2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03000c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 137
    new-instance v1, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;-><init>(Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;)V

    .line 139
    const v0, 0x7f0e007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItem;

    .line 141
    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 142
    const v0, 0x7f0e007d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    iput-object v0, v1, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    .line 143
    const v0, 0x7f0e007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcRadioButton;

    iput-object v0, v1, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    .line 144
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 148
    :cond_0
    iget-object v1, v0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    const v2, 0x7f0900d5

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 149
    iget-object v1, v0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 151
    iget-object v1, v0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, v0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v1, v3}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setVisibility(I)V

    .line 154
    iget-object v1, v0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v1, v3}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setClickable(Z)V

    .line 156
    :cond_1
    iget v1, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_currentSelectedItem:I

    if-ne p1, v1, :cond_4

    .line 158
    iget-object v1, v0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v1, v4}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setChecked(Z)V

    .line 164
    :goto_1
    iget-object v1, v0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    if-eqz v1, :cond_2

    .line 165
    iget-object v0, v0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_OptionList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->setPrimaryText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;)Z

    .line 180
    :cond_2
    :goto_2
    invoke-virtual {p0, p2}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->setBackgroundForView(Landroid/view/View;)V

    .line 181
    return-object p2

    :cond_3
    move-object v0, v1

    move-object p2, v1

    .line 128
    goto :goto_0

    .line 161
    :cond_4
    iget-object v1, v0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v1, v3}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_1

    .line 169
    :cond_5
    if-nez p2, :cond_6

    .line 171
    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030061

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 172
    new-instance v1, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;-><init>(Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;)V

    .line 174
    const v0, 0x7f0e0180

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 175
    iput-object v0, v1, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->description:Landroid/widget/TextView;

    .line 177
    :goto_3
    iget-object v2, v1, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->description:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_OptionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, v1, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->description:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_hasdescription:Z

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setBackgroundForView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 218
    const v0, 0x7f0200ea

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 219
    return-void
.end method

.method public setCurrentSelected(I)V
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lcom/htc/camera/component/CameraHwKeyDialogHintUI$DialogHintAdapter;->m_currentSelectedItem:I

    .line 223
    return-void
.end method

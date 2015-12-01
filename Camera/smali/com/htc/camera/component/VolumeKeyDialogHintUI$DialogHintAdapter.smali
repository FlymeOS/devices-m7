.class Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;
.super Landroid/widget/BaseAdapter;
.source "VolumeKeyDialogHintUI.java"


# instance fields
.field private TAG:Ljava/lang/String;

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

.field final synthetic this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/VolumeKeyDialogHintUI;Lcom/htc/camera/HTCCamera;Ljava/util/List;Z)V
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
    .line 85
    iput-object p1, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->this$0:Lcom/htc/camera/component/VolumeKeyDialogHintUI;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 78
    const-string v0, "DialogHintAdapter"

    iput-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->TAG:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    .line 87
    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_OptionList:Ljava/util/List;

    .line 88
    iput-boolean p4, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_hasdescription:Z

    .line 89
    iget-boolean v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_hasdescription:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_currentSelectedItem:I

    .line 90
    return-void

    .line 87
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setPrimaryText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 189
    if-nez p2, :cond_0

    .line 191
    invoke-virtual {p1, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setVisibility(I)V

    .line 218
    :goto_0
    return v0

    .line 196
    :cond_0
    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setVisibility(I)V

    .line 198
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 200
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 201
    if-lez v0, :cond_1

    .line 202
    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 218
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p1, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setVisibility(I)V

    goto :goto_1

    .line 206
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 209
    check-cast p2, Ljava/lang/String;

    .line 210
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 211
    invoke-virtual {p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :cond_3
    invoke-virtual {p1, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setVisibility(I)V

    goto :goto_1

    .line 216
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
    .line 94
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_OptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_OptionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_OptionList:Ljava/util/List;

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
    .line 118
    if-gtz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_hasdescription:Z

    if-nez v0, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 120
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

    .line 125
    .line 126
    if-eqz p2, :cond_7

    .line 128
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 129
    instance-of v2, v0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;

    if-eqz v2, :cond_3

    .line 130
    check-cast v0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;

    .line 135
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->getItemViewType(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 138
    if-nez p2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03000c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 141
    new-instance v1, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;-><init>(Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;)V

    .line 143
    const v0, 0x7f0e007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItem;

    .line 145
    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 146
    const v0, 0x7f0e007d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    iput-object v0, v1, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    .line 147
    const v0, 0x7f0e007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcRadioButton;

    iput-object v0, v1, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    .line 148
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 152
    :cond_0
    iget-object v1, v0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    const v2, 0x7f0900d5

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 153
    iget-object v1, v0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 155
    iget-object v1, v0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, v0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v1, v3}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setVisibility(I)V

    .line 158
    iget-object v1, v0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v1, v3}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setClickable(Z)V

    .line 160
    :cond_1
    iget v1, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_currentSelectedItem:I

    if-ne p1, v1, :cond_4

    .line 162
    iget-object v1, v0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v1, v4}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setChecked(Z)V

    .line 168
    :goto_1
    iget-object v1, v0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    if-eqz v1, :cond_2

    .line 169
    iget-object v0, v0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_OptionList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->setPrimaryText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;)Z

    .line 184
    :cond_2
    :goto_2
    invoke-virtual {p0, p2}, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->setBackgroundForView(Landroid/view/View;)V

    .line 185
    return-object p2

    :cond_3
    move-object v0, v1

    move-object p2, v1

    .line 132
    goto :goto_0

    .line 165
    :cond_4
    iget-object v1, v0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->rightRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v1, v3}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_1

    .line 173
    :cond_5
    if-nez p2, :cond_6

    .line 175
    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030061

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 176
    new-instance v1, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;-><init>(Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;)V

    .line 178
    const v0, 0x7f0e0180

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    iput-object v0, v1, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->description:Landroid/widget/TextView;

    .line 181
    :goto_3
    iget-object v2, v1, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->description:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_OptionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, v1, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter$ItemViewInfo;->description:Landroid/widget/TextView;

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
    .line 111
    iget-boolean v0, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_hasdescription:Z

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setBackgroundForView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 222
    const v0, 0x7f0200ea

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 223
    return-void
.end method

.method public setCurrentSelected(I)V
    .locals 0

    .prologue
    .line 226
    iput p1, p0, Lcom/htc/camera/component/VolumeKeyDialogHintUI$DialogHintAdapter;->m_currentSelectedItem:I

    .line 227
    return-void
.end method

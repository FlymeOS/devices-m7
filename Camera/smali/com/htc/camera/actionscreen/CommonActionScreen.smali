.class public Lcom/htc/camera/actionscreen/CommonActionScreen;
.super Lcom/htc/camera/actionscreen/ActionScreen;
.source "CommonActionScreen.java"


# instance fields
.field public final isUIHidden:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

.field private m_CurrentAction:Ljava/lang/Runnable;

.field private m_CurrentMediaEventArgs:Lcom/htc/camera/media/MediaEventArgs;

.field private m_CurrentPopupObject:Ljava/lang/Object;

.field private final m_DeleteAction:Ljava/lang/Runnable;

.field private m_DeleteButton:Landroid/view/View;

.field private final m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private m_DialogHandle:Lcom/htc/camera/Handle;

.field private m_FunctionBar:Landroid/view/View;

.field private final m_HideActionScreenHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/SessionHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsTimeout:Z

.field private m_IsTouchDelegateSet:Z

.field private final m_PlayAction:Ljava/lang/Runnable;

.field private m_PlayButton:Landroid/view/View;

.field private m_PopupOffsetX:I

.field private m_PopupOffsetY:I

.field private final m_RecaptureAction:Ljava/lang/Runnable;

.field private m_RetakeAction:Ljava/lang/Runnable;

.field private m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

.field private m_ReviewContainer:Landroid/view/View;

.field private m_RotateContainer:[Landroid/widget/RelativeLayout;

.field private final m_SetAsAction:Ljava/lang/Runnable;

.field private m_SetAsButton:Landroid/view/View;

.field private final m_ShareAction:Ljava/lang/Runnable;

.field private m_ShareButton:Landroid/view/View;

.field private m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

.field private m_Timeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 5

    .prologue
    .line 176
    const-string v0, "Common Action Screen"

    const v1, 0x7f030060

    invoke-direct {p0, v0, p1, v1}, Lcom/htc/camera/actionscreen/ActionScreen;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;I)V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_HideActionScreenHandles:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Lcom/htc/camera/actionscreen/CommonActionScreen$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$1;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DeleteAction:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Lcom/htc/camera/actionscreen/CommonActionScreen$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$2;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PlayAction:Ljava/lang/Runnable;

    .line 128
    new-instance v0, Lcom/htc/camera/actionscreen/CommonActionScreen$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$3;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RecaptureAction:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/htc/camera/actionscreen/CommonActionScreen$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$4;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsAction:Ljava/lang/Runnable;

    .line 143
    new-instance v0, Lcom/htc/camera/actionscreen/CommonActionScreen$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$5;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareAction:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Lcom/htc/camera/actionscreen/CommonActionScreen$6;

    invoke-direct {v0, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$6;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 162
    new-instance v0, Lcom/htc/camera/actionscreen/CommonActionScreen$7;

    invoke-direct {v0, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$7;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 178
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "CommonActionScreen.IsHidden"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->isUIHidden:Lcom/htc/camera/property/Property;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->onDeleteClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->onPlayClicked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/actionscreen/CommonActionScreen;)Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/actionscreen/CommonActionScreen;Landroid/widget/ListAdapter;Landroid/widget/ListView;)Lcom/htc/camera/imaging/Size;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->measureContentSize(Landroid/widget/ListAdapter;Landroid/widget/ListView;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/actionscreen/CommonActionScreen;)Lcom/htc/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/actionscreen/CommonActionScreen;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PopupOffsetX:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/camera/actionscreen/CommonActionScreen;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PopupOffsetY:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->onCaptureClicked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->onRetakeClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->onSetAsClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->onShareClicked()V

    return-void
.end method

.method static synthetic access$502(Lcom/htc/camera/actionscreen/CommonActionScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/camera/actionscreen/CommonActionScreen;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/camera/actionscreen/CommonActionScreen;I)V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/actionscreen/CommonActionScreen;)Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private closePopupObjects()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 268
    const-class v0, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 269
    if-eqz v0, :cond_1

    .line 270
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IRotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    .line 271
    iput-object v2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DialogHandle:Lcom/htc/camera/Handle;

    .line 279
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    .line 280
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "closePopupObjecets() - Cannot find IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/htc/camera/widget/PopupBubble;->close()V

    goto :goto_0
.end method

.method private getMediaToShare(Lcom/htc/camera/event/Event;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/media/MediaInfo;",
            ">;>;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/media/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/htc/camera/QueryEventArgs;

    invoke-direct {v0}, Lcom/htc/camera/QueryEventArgs;-><init>()V

    .line 288
    invoke-virtual {p1, p0, v0}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 289
    invoke-virtual {v0}, Lcom/htc/camera/QueryEventArgs;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/htc/camera/QueryEventArgs;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 290
    :goto_0
    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->sinaCamera_IsGifMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    sget-object v1, Lcom/htc/camera/sina/GifGenerator;->slastGifMediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_1
    :goto_1
    return-object v0

    .line 289
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getLastMediaInfo()Lcom/htc/camera/media/MediaInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private measureContentSize(Landroid/widget/ListAdapter;Landroid/widget/ListView;)Lcom/htc/camera/imaging/Size;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 1018
    .line 1021
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1023
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1025
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    move v2, v0

    move v1, v0

    move v3, v0

    move v4, v0

    .line 1026
    :goto_0
    if-ge v2, v7, :cond_0

    .line 1027
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 1028
    if-eq v0, v1, :cond_1

    .line 1032
    :goto_1
    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1033
    invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 1034
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1035
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v3, v8

    .line 1037
    iget-object v8, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "measureContentSize() - item width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", current width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v8, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "measureContentSize() - item height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", current height = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 1040
    :cond_0
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0, v4, v3}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private onCaptureClicked()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureClicked() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Another action is performing, cannot re-capture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RecaptureAction:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 415
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, close later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_3
    sget-object v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->Capture:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->close(Lcom/htc/camera/actionscreen/ActionScreenCloseReason;Z)V

    .line 422
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureClicked() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDeleteClicked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 440
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onDeleteClicked() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Another action is performing, cannot delete content"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DeleteAction:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 459
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_3

    .line 461
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, delete content later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_3
    new-instance v1, Lcom/htc/camera/actionscreen/CommonActionScreen$11;

    invoke-direct {v1, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$11;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    .line 477
    new-instance v2, Lcom/htc/camera/actionscreen/CommonActionScreen$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$12;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    .line 487
    new-instance v0, Lcom/htc/camera/QueryEventArgs;

    invoke-direct {v0}, Lcom/htc/camera/QueryEventArgs;-><init>()V

    .line 488
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/HTCCamera;->queryConfirmDeletingMediaMessageEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v3, p0, v0}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 490
    invoke-virtual {v0}, Lcom/htc/camera/QueryEventArgs;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 491
    invoke-virtual {v0}, Lcom/htc/camera/QueryEventArgs;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 508
    :goto_1
    new-instance v3, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0800f7

    invoke-virtual {v3, v4}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0801a1

    invoke-virtual {v0, v3, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080413

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v1

    .line 514
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 517
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    .line 519
    const-class v0, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 520
    if-eqz v0, :cond_8

    .line 521
    iget-object v2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1, v2, v6}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DialogHandle:Lcom/htc/camera/Handle;

    .line 525
    :goto_2
    iput-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    .line 527
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onDeleteClicked() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getLastMediaInfo()Lcom/htc/camera/media/MediaInfo;

    move-result-object v0

    .line 496
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->sinaCamera_IsGifMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 497
    sget-object v0, Lcom/htc/camera/sina/GifGenerator;->slastGifMediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/htc/camera/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    :goto_3
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080362

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 498
    :cond_5
    const-string v0, ""

    goto :goto_3

    .line 500
    :cond_6
    if-eqz v0, :cond_7

    iget-object v3, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v3, :cond_7

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v0, v0, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string v0, ""

    goto :goto_3

    .line 523
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v2, "onDeleteClicked() -  Cannot find IRotateDialogManager interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onPlayClicked()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 597
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v2, "onPlayClicked() - start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Another action is performing, cannot play video"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 615
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PlayAction:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 616
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_3

    .line 618
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, play video later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->sinaCamera_IsGifMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 624
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/sina/AlbumGifStarter;->getInst(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/AlbumGifStarter;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/sina/GifGenerator;->lastGenerateGIfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/htc/camera/sina/AlbumGifStarter;->start(Landroid/net/Uri;)V

    goto :goto_0

    .line 628
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 633
    :try_start_0
    const-string v0, "com.htc.video"

    const-string v2, "com.htc.video.ViewVideo"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v0, "landscape"

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 643
    :goto_1
    if-nez v0, :cond_5

    .line 645
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "video/*"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 651
    :cond_5
    if-nez v0, :cond_6

    .line 652
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->clearAction()V

    .line 654
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onPlayClicked() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 639
    const/4 v2, 0x0

    .line 640
    iget-object v4, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v5, "com.htc.video - play video fail"

    invoke-static {v4, v5, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_1
.end method

.method private onRetakeClicked()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onRetakeClicked() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onRetakeClicked() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method private onSetAsClicked()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 672
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onSetAsClicked() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setColorOn(Z)V

    .line 678
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :goto_0
    return-void

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 685
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Another action is performing, cannot set media"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 693
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsAction:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 694
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_4

    .line 696
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, set later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 702
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->queryMediaToSetAsEvent:Lcom/htc/camera/event/Event;

    invoke-direct {p0, v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getMediaToShare(Lcom/htc/camera/event/Event;)Ljava/util/List;

    move-result-object v0

    .line 705
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 707
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "No media information to set as"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iput-object v3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    goto :goto_0

    .line 711
    :cond_5
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/MediaInfo;

    .line 712
    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/htc/camera/media/MediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    .line 714
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "No media information to set as"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iput-object v3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    goto :goto_0

    .line 720
    :cond_7
    new-instance v2, Lcom/htc/camera/share/MediaSetAsListAdapter;

    invoke-direct {v2, v1, v0}, Lcom/htc/camera/share/MediaSetAsListAdapter;-><init>(Landroid/content/Context;Lcom/htc/camera/media/MediaInfo;)V

    .line 721
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 722
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 723
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 724
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 728
    const v3, 0x7f09004d

    sget-object v4, Lcom/htc/camera/R$styleable;->HtcListView:[I

    invoke-virtual {v1, v3, v4}, Lcom/htc/camera/HTCCamera;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 729
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 730
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 731
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 732
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 735
    new-instance v3, Lcom/htc/camera/widget/PopupBubble;

    invoke-direct {v3, v1}, Lcom/htc/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    .line 737
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 738
    new-instance v5, Lcom/htc/camera/actionscreen/CommonActionScreen$13;

    invoke-direct {v5, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$13;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v3, v5}, Lcom/htc/camera/widget/PopupBubble;->setOnClosedListener(Lcom/htc/camera/widget/h;)V

    .line 749
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v5}, Lcom/htc/camera/widget/PopupBubble;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/camera/widget/PopupBubble;->setContentRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 751
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 752
    invoke-virtual {v3, v4, v8}, Lcom/htc/camera/widget/PopupBubble;->setSize(II)V

    .line 757
    :goto_1
    new-instance v4, Lcom/htc/camera/actionscreen/CommonActionScreen$14;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen$14;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;Lcom/htc/camera/widget/PopupBubble;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/share/MediaSetAsListAdapter;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 777
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    .line 778
    sget-object v0, Lcom/htc/camera/widget/PopupBubble$ExpandDirection;->Right:Lcom/htc/camera/widget/PopupBubble$ExpandDirection;

    invoke-virtual {v3, v0}, Lcom/htc/camera/widget/PopupBubble;->setExpandDirection(Lcom/htc/camera/widget/PopupBubble$ExpandDirection;)V

    .line 779
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PopupOffsetX:I

    iget v2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PopupOffsetY:I

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/camera/widget/PopupBubble;->open(Landroid/view/View;II)V

    .line 780
    iput-object v3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    .line 781
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_8

    .line 782
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v7}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setColorOn(Z)V

    .line 784
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onSetAsClicked() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    :cond_9
    invoke-virtual {v3, v8, v4}, Lcom/htc/camera/widget/PopupBubble;->setSize(II)V

    goto :goto_1
.end method

.method private onShareClicked()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 792
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onShareClicked() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v11}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setColorOn(Z)V

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :goto_0
    return-void

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 805
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Another action is performing, cannot share content"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :cond_3
    invoke-virtual {p0, v12}, Lcom/htc/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 813
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareAction:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 814
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_4

    .line 816
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, share content later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    .line 822
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->queryMediaToShareEvent:Lcom/htc/camera/event/Event;

    invoke-direct {p0, v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getMediaToShare(Lcom/htc/camera/event/Event;)Ljava/util/List;

    move-result-object v0

    .line 825
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 827
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "No media information to share"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iput-object v5, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    goto :goto_0

    .line 833
    :cond_5
    new-instance v4, Lcom/htc/camera/share/ShareViaAdapterProvider;

    invoke-direct {v4, v3}, Lcom/htc/camera/share/ShareViaAdapterProvider;-><init>(Landroid/content/Context;)V

    .line 834
    invoke-virtual {v4, v0}, Lcom/htc/camera/share/ShareViaAdapterProvider;->initialize(Ljava/util/List;)V

    .line 835
    invoke-virtual {v4}, Lcom/htc/camera/share/ShareViaAdapterProvider;->getShareViaAdapter()Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    move-result-object v2

    .line 838
    new-instance v6, Lcom/htc/camera/widget/PopupBubble;

    invoke-direct {v6, v3}, Lcom/htc/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    .line 839
    new-instance v0, Lcom/htc/camera/actionscreen/CommonActionScreen$15;

    invoke-direct {v0, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$15;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v6, v0}, Lcom/htc/camera/widget/PopupBubble;->setOnClosedListener(Lcom/htc/camera/widget/h;)V

    .line 856
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setListItemBackgroundDrawable"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/graphics/drawable/Drawable;

    aput-object v9, v7, v8

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 857
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v7, "setListItemTextAppearance"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 865
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 866
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, v0, v7

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 868
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const v7, 0x7f0900cf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v1

    invoke-virtual {v5, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 874
    :goto_2
    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 875
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 876
    invoke-virtual {v7, v11}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 877
    invoke-virtual {v7, v11}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 881
    const v0, 0x7f09004d

    sget-object v1, Lcom/htc/camera/R$styleable;->HtcListView:[I

    invoke-virtual {v3, v0, v1}, Lcom/htc/camera/HTCCamera;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 882
    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 883
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 884
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 885
    invoke-virtual {v7, v11}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 888
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v0}, Lcom/htc/camera/widget/PopupBubble;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/htc/camera/widget/PopupBubble;->setContentRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 891
    new-instance v5, Lcom/htc/camera/actionscreen/CommonActionScreen$16;

    invoke-direct {v5, p0, v2, v7, v6}, Lcom/htc/camera/actionscreen/CommonActionScreen$16;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;Landroid/widget/ListView;Lcom/htc/camera/widget/PopupBubble;)V

    .line 969
    invoke-virtual {v2, v5}, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 972
    new-instance v0, Lcom/htc/camera/actionscreen/CommonActionScreen$17;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/actionscreen/CommonActionScreen$17;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/share/ShareViaAdapterProvider;Landroid/database/DataSetObserver;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1013
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onShareClicked() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 858
    :catch_0
    move-exception v0

    move-object v1, v5

    .line 859
    :goto_3
    iget-object v7, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v8, "onShareClicked() - Error occurs"

    invoke-static {v7, v8, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 869
    :catch_1
    move-exception v0

    .line 870
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v5, "onShareClicked() - Error occurs"

    invoke-static {v1, v5, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 858
    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method private onTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1048
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onTimeout() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :goto_0
    return-void

    .line 1058
    :cond_1
    iput-boolean v2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    .line 1059
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1061
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, close later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1064
    :cond_2
    sget-object v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->close(Lcom/htc/camera/actionscreen/ActionScreenCloseReason;Z)V

    .line 1066
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onTimeout() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareHtcActionScreen()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const v5, 0x7f0e017c

    const/4 v1, 0x0

    .line 1168
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-nez v0, :cond_5

    .line 1171
    const v0, 0x7f0a03a5

    invoke-virtual {p0, v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PopupOffsetX:I

    .line 1172
    const v0, 0x7f0a03a6

    invoke-virtual {p0, v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PopupOffsetY:I

    .line 1175
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getLayout()Landroid/view/View;

    move-result-object v2

    .line 1176
    const v0, 0x7f0e0176

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    .line 1177
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    const v3, 0x7f0e0178

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    .line 1178
    new-array v3, v6, [Landroid/widget/RelativeLayout;

    const v0, 0x7f0e017a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v3, v4

    const/4 v4, 0x2

    const v0, 0x7f0e017e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v3, v4

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    aput-object v0, v3, v4

    iput-object v3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Landroid/widget/RelativeLayout;

    .line 1184
    const v0, 0x7f0e0173

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/CaptureBarButton;

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    .line 1185
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v3, 0x7f020205

    invoke-virtual {v0, v3}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    .line 1186
    const v0, 0x7f0e0175

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/CaptureBarButton;

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    .line 1187
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v3, 0x7f020212

    invoke-virtual {v0, v3}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    .line 1188
    const v0, 0x7f0e0179

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    .line 1191
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget-boolean v0, v0, Lcom/htc/camera/ScreenResolution;->hasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1194
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sget-object v4, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v4, v4, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1195
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->requestLayout()V

    .line 1197
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1198
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sget-object v4, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v4, v4, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1199
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->requestLayout()V

    .line 1201
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->updateCaptureButtons()V

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    new-instance v3, Lcom/htc/camera/actionscreen/CommonActionScreen$18;

    invoke-direct {v3, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$18;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1212
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1213
    if-eqz v0, :cond_1

    .line 1214
    iget-object v3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v3, v4, v0}, Lcom/htc/camera/ViewUtil;->setSize(Landroid/view/View;II)V

    .line 1217
    :cond_1
    const v0, 0x7f0e017d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    .line 1218
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_2

    .line 1220
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    const v3, 0x7f020084

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    .line 1223
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    new-instance v3, Lcom/htc/camera/actionscreen/CommonActionScreen$19;

    invoke-direct {v3, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$19;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1232
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    new-instance v3, Lcom/htc/camera/actionscreen/CommonActionScreen$20;

    invoke-direct {v3, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$20;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v0, v3}, Lcom/htc/camera/widget/CaptureBarButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1250
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    new-instance v3, Lcom/htc/camera/actionscreen/CommonActionScreen$21;

    invoke-direct {v3, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$21;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v0, v3}, Lcom/htc/camera/widget/CaptureBarButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1267
    const v0, 0x7f0e017f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    .line 1268
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_3

    .line 1270
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    const v3, 0x7f02005a

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    .line 1273
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    new-instance v3, Lcom/htc/camera/actionscreen/CommonActionScreen$22;

    invoke-direct {v3, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$22;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1282
    const v0, 0x7f0e017b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    .line 1283
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_4

    .line 1285
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    const v2, 0x7f020086

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    .line 1288
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    new-instance v2, Lcom/htc/camera/actionscreen/CommonActionScreen$23;

    invoke-direct {v2, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$23;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1298
    :cond_5
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v2, :cond_7

    .line 1301
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1305
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1322
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v2

    .line 1323
    iget-object v3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Landroid/widget/RelativeLayout;

    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_8

    aget-object v0, v3, v1

    .line 1325
    instance-of v5, v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v5, :cond_6

    .line 1326
    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 1323
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1311
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1314
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1329
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1330
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1332
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1333
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    invoke-virtual {v2}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 1334
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1335
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-virtual {v2}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 1336
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1337
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    invoke-virtual {v2}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 1338
    :cond_b
    return-void
.end method

.method private setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1360
    if-eqz p3, :cond_3

    .line 1362
    if-eqz p1, :cond_0

    .line 1363
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1364
    :cond_0
    instance-of v0, p2, Lcom/htc/camera/widget/ImageTextView;

    if-eqz v0, :cond_2

    .line 1365
    check-cast p2, Lcom/htc/camera/widget/ImageTextView;

    invoke-virtual {p2, v2}, Lcom/htc/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 1381
    :cond_1
    :goto_0
    return-void

    .line 1366
    :cond_2
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1367
    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/htc/camera/ViewUtil;->enableImageView(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1371
    :cond_3
    if-eqz p1, :cond_4

    .line 1373
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1374
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1376
    :cond_4
    instance-of v0, p2, Lcom/htc/camera/widget/ImageTextView;

    if-eqz v0, :cond_5

    .line 1377
    check-cast p2, Lcom/htc/camera/widget/ImageTextView;

    invoke-virtual {p2, v1}, Lcom/htc/camera/widget/ImageTextView;->setEnabled(Z)V

    goto :goto_0

    .line 1378
    :cond_5
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1379
    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/htc/camera/ViewUtil;->disableImageView(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private final updateCaptureButtons()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1568
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "updateCaptureButtons()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1576
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1577
    if-eqz v0, :cond_0

    .line 1579
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    const v1, 0x7f0a0489

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v4, v4, v3, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1580
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1583
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1584
    if-eqz v0, :cond_1

    .line 1586
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    const v1, 0x7f0a048a

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v4, v4, v3, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1587
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1591
    :cond_1
    return-void

    .line 1579
    :cond_2
    const v1, 0x7f0a0488

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 1586
    :cond_3
    const v1, 0x7f0a026b

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public final clearAction()V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 188
    :cond_0
    return-void
.end method

.method protected closeActionScreen(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    invoke-virtual {p0, v3}, Lcom/htc/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 200
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    .line 203
    if-eqz p1, :cond_5

    .line 206
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v2, v3, v5}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    new-instance v1, Lcom/htc/camera/actionscreen/CommonActionScreen$8;

    invoke-direct {v1, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$8;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_2
    iput-object v5, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    .line 250
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_HideActionScreenHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 253
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0, v4}, Lcom/htc/camera/widget/CaptureBarButton;->setVisibility(I)V

    .line 255
    :cond_3
    iput-object v5, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeAction:Ljava/lang/Runnable;

    .line 258
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->isUIHidden:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    return-void

    .line 223
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/actionscreen/CommonActionScreen$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$9;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 236
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 307
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 314
    invoke-super {p0, p1}, Lcom/htc/camera/actionscreen/ActionScreen;->handleMessage(Landroid/os/Message;)V

    .line 317
    :goto_0
    return-void

    .line 310
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->onTimeout()V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final hideUI()Lcom/htc/camera/Handle;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 333
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    if-eq v0, v1, :cond_1

    .line 335
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "hideUI() - action screen is not opening/opened yet"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    .line 370
    :cond_0
    :goto_0
    return-object v0

    .line 340
    :cond_1
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "CommonActionScreen"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v2, "hideUI() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_HideActionScreenHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_HideActionScreenHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 349
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v1, v3, v3}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 352
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v1, v3, v3}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 355
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 360
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getLayout()Landroid/view/View;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_4

    .line 365
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 367
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->isUIHidden:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 379
    invoke-super {p0}, Lcom/htc/camera/actionscreen/ActionScreen;->initializeOverride()V

    .line 381
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/actionscreen/CommonActionScreen$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/actionscreen/CommonActionScreen$10;-><init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 392
    return-void
.end method

.method protected onCaptureFailed()V
    .locals 0

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->clearAction()V

    .line 432
    invoke-super {p0}, Lcom/htc/camera/actionscreen/ActionScreen;->onCaptureFailed()V

    .line 433
    return-void
.end method

.method protected onKeyDown(ILcom/htc/camera/input/KeyEventArgs;)Z
    .locals 1

    .prologue
    .line 536
    iget v0, p2, Lcom/htc/camera/input/KeyEventArgs;->repeatCount:I

    if-nez v0, :cond_0

    .line 538
    sparse-switch p1, :sswitch_data_0

    .line 555
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/camera/actionscreen/ActionScreen;->onKeyDown(ILcom/htc/camera/input/KeyEventArgs;)Z

    move-result v0

    :goto_0
    return v0

    .line 543
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->onCaptureClicked()V

    .line 544
    const/4 v0, 0x1

    goto :goto_0

    .line 548
    :sswitch_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-nez v0, :cond_1

    .line 549
    const-class v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    const/4 v0, 0x0

    goto :goto_0

    .line 538
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1b -> :sswitch_0
        0x83 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMediaSaveCompleted(Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 2

    .prologue
    .line 565
    invoke-super {p0, p1}, Lcom/htc/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/htc/camera/io/MediaSaveEventArgs;)V

    .line 567
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentMediaEventArgs:Lcom/htc/camera/media/MediaEventArgs;

    .line 570
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->result:Lcom/htc/camera/io/FileSaveResult;

    sget-object v1, Lcom/htc/camera/io/FileSaveResult;->SUCCEEDED:Lcom/htc/camera/io/FileSaveResult;

    if-eq v0, v1, :cond_2

    .line 576
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Media save failed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    sget-object v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->close(Lcom/htc/camera/actionscreen/ActionScreenCloseReason;Z)V

    goto :goto_0

    .line 582
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 583
    sget-object v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->close(Lcom/htc/camera/actionscreen/ActionScreenCloseReason;Z)V

    .line 586
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 587
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 588
    if-eqz v0, :cond_0

    .line 589
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected openActionScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1076
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 1079
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 1082
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 1085
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->sinaCamera_IsGifMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1087
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->updateCaptureButtons()V

    .line 1101
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1102
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 1103
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1104
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 1111
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    .line 1114
    iget-boolean v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_IsTouchDelegateSet:Z

    if-nez v0, :cond_4

    .line 1116
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1118
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    const v1, 0x7f0e0177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setTouchDelegate(Landroid/view/View;Landroid/view/View;)V

    .line 1119
    iput-boolean v2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_IsTouchDelegateSet:Z

    .line 1122
    :cond_4
    return-void

    .line 1092
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-nez v0, :cond_6

    .line 1093
    const-class v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    iput-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    .line 1094
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final performAction(Ljava/lang/Runnable;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1130
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return v0

    .line 1132
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 1134
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v2, "Another action is performing, cannot perform action"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1139
    :cond_2
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 1140
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1141
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1144
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1143
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, perform action later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected prepareActionScreen(Lcom/htc/camera/CaptureHandle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1154
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->prepareHtcActionScreen()V

    .line 1157
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    .line 1158
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    .line 1159
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    .line 1160
    return-void
.end method

.method public final setBackKeyEnabled(Z)V
    .locals 2

    .prologue
    .line 1389
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    :goto_0
    return-void

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final setDeleteButtonEnabled(Z)V
    .locals 2

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1407
    :goto_0
    return-void

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final setRetakeAction(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    if-eq v0, v1, :cond_1

    .line 1417
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "setRetakeAction() - action screen is not opening/opened yet"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeAction:Ljava/lang/Runnable;

    if-eq v0, p1, :cond_2

    .line 1423
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeAction:Ljava/lang/Runnable;

    .line 1425
    if-eqz p1, :cond_2

    .line 1427
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->updateCaptureButtons()V

    .line 1431
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->isUIHidden:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1433
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setVisibility(I)V

    goto :goto_0

    .line 1435
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "setRetakeAction() - m_RetakeButton is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setRetakeKeyEnabled(Z)V
    .locals 2

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1449
    :goto_0
    return-void

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final setSetAsButtonEnabled(Z)V
    .locals 2

    .prologue
    .line 1457
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1462
    :goto_0
    return-void

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final setShareButtonEnabled(Z)V
    .locals 2

    .prologue
    .line 1513
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    :goto_0
    return-void

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final showUI(Lcom/htc/camera/Handle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1470
    if-nez p1, :cond_1

    .line 1472
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "showUI() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1476
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "showUI() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1479
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_HideActionScreenHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1481
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "showUI() - Cannot recognize the handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1486
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_HideActionScreenHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_BackButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 1492
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 1493
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_RetakeButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 1496
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1497
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1500
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1501
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1503
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->isUIHidden:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final startAutoCloseTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1526
    invoke-virtual {p0, v4}, Lcom/htc/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 1527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    .line 1530
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->isOpening()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1532
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1537
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->frontReviewDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    .line 1542
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 1544
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 1545
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1554
    :goto_2
    invoke-virtual {p0, p0, v4, v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    goto :goto_0

    .line 1537
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->mainReviewDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    goto :goto_1

    .line 1548
    :cond_3
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1549
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v0

    goto :goto_2
.end method

.method public final stopAutoCloseTimer()V
    .locals 1

    .prologue
    .line 1563
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 1564
    return-void
.end method

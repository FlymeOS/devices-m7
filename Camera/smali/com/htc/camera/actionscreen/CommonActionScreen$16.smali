.class Lcom/htc/camera/actionscreen/CommonActionScreen$16;
.super Landroid/database/DataSetObserver;
.source "CommonActionScreen.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

.field final synthetic val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

.field final synthetic val$bubble:Lcom/htc/camera/widget/PopupBubble;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/CommonActionScreen;Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;Landroid/widget/ListView;Lcom/htc/camera/widget/PopupBubble;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    iput-object p2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    iput-object p3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$listView:Landroid/widget/ListView;

    iput-object p4, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$bubble:Lcom/htc/camera/widget/PopupBubble;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 15

    .prologue
    const/16 v14, 0xa2

    const/4 v1, 0x0

    .line 897
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    if-eqz v0, :cond_7

    .line 898
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    iget-object v2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    iget-object v3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$listView:Landroid/widget/ListView;

    # invokes: Lcom/htc/camera/actionscreen/CommonActionScreen;->measureContentSize(Landroid/widget/ListAdapter;Landroid/widget/ListView;)Lcom/htc/camera/imaging/Size;
    invoke-static {v0, v2, v3}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1100(Lcom/htc/camera/actionscreen/CommonActionScreen;Landroid/widget/ListAdapter;Landroid/widget/ListView;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    .line 900
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 901
    new-instance v2, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget-object v4, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v4}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;)V

    .line 902
    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 903
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 905
    iget v2, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    .line 906
    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v4, v0

    .line 910
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "isExpanded"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 911
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 913
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # invokes: Lcom/htc/camera/actionscreen/CommonActionScreen;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1200(Lcom/htc/camera/actionscreen/CommonActionScreen;)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 914
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1000(Lcom/htc/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 916
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 917
    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 918
    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v6

    .line 919
    iget-object v6, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v6}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0165

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 920
    iget-object v7, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v7}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0164

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 921
    sget v8, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    sub-int/2addr v8, v2

    iget v9, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v6

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PopupOffsetX:I
    invoke-static {v9}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1300(Lcom/htc/camera/actionscreen/CommonActionScreen;)I

    move-result v9

    sub-int/2addr v8, v9

    .line 922
    int-to-double v8, v8

    sget v10, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v10, v10

    const-wide v12, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 923
    sget v2, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v8, v2

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    int-to-double v10, v6

    sub-double/2addr v8, v10

    int-to-double v10, v0

    sub-double/2addr v8, v10

    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PopupOffsetX:I
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1300(Lcom/htc/camera/actionscreen/CommonActionScreen;)I

    move-result v0

    int-to-double v10, v0

    sub-double/2addr v8, v10

    double-to-int v0, v8

    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget v2, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$600(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$bubble:Lcom/htc/camera/widget/PopupBubble;

    if-eq v0, v3, :cond_2

    .line 925
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$bubble:Lcom/htc/camera/widget/PopupBubble;

    invoke-virtual {v0, v2, v4}, Lcom/htc/camera/widget/PopupBubble;->setSize(II)V

    move v0, v1

    :goto_0
    move v1, v0

    move v0, v2

    .line 949
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1400(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShareClicked() - new width = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", new height = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", newFitScreenHeight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", new count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;->areAllItemsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SCREEN_WIDTH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",navigationBarHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v1, v1, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$600(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$bubble:Lcom/htc/camera/widget/PopupBubble;

    if-eq v0, v1, :cond_1

    .line 952
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1500(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShareClicked() - open popup window for sharing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # invokes: Lcom/htc/camera/actionscreen/CommonActionScreen;->closePopupObjects()V
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1600(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    .line 954
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$bubble:Lcom/htc/camera/widget/PopupBubble;

    sget-object v1, Lcom/htc/camera/widget/PopupBubble$ExpandDirection;->Right:Lcom/htc/camera/widget/PopupBubble$ExpandDirection;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/PopupBubble;->setExpandDirection(Lcom/htc/camera/widget/PopupBubble$ExpandDirection;)V

    .line 955
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$bubble:Lcom/htc/camera/widget/PopupBubble;

    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1000(Lcom/htc/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PopupOffsetX:I
    invoke-static {v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1300(Lcom/htc/camera/actionscreen/CommonActionScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_PopupOffsetY:I
    invoke-static {v3}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1700(Lcom/htc/camera/actionscreen/CommonActionScreen;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/camera/widget/PopupBubble;->open(Landroid/view/View;II)V

    .line 956
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$bubble:Lcom/htc/camera/widget/PopupBubble;

    # setter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$602(Lcom/htc/camera/actionscreen/CommonActionScreen;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1000(Lcom/htc/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1000(Lcom/htc/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setColorOn(Z)V

    .line 966
    :cond_1
    :goto_2
    return-void

    .line 927
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v14, v0, :cond_8

    .line 928
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v1, v7, 0x2

    sub-int/2addr v0, v1

    .line 929
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$bubble:Lcom/htc/camera/widget/PopupBubble;

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/widget/PopupBubble;->setSizeDirectly(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 963
    :catch_0
    move-exception v0

    .line 964
    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1900(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onShareClicked() - error occurs"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 935
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0a0164

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 936
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sub-int/2addr v0, v2

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v7

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v7

    sub-int/2addr v0, v6

    .line 937
    int-to-double v7, v0

    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-double v9, v0

    const-wide v11, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v9, v11

    cmpl-double v0, v7, v9

    if-lez v0, :cond_4

    .line 938
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-double v7, v0

    const-wide v9, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v7, v9

    int-to-double v9, v6

    sub-double/2addr v7, v9

    double-to-int v0, v7

    iget v2, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    .line 939
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$600(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$bubble:Lcom/htc/camera/widget/PopupBubble;

    if-eq v0, v3, :cond_5

    .line 940
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$bubble:Lcom/htc/camera/widget/PopupBubble;

    invoke-virtual {v0, v4, v2}, Lcom/htc/camera/widget/PopupBubble;->setSize(II)V

    move v0, v2

    goto/16 :goto_1

    .line 942
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$adapter:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v14, v0, :cond_6

    .line 944
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    iget-object v1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1000(Lcom/htc/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v1, v6, 0x2

    sub-int v1, v0, v1

    .line 945
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->val$bubble:Lcom/htc/camera/widget/PopupBubble;

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/htc/camera/widget/PopupBubble;->setSizeDirectly(II)V

    :cond_6
    move v0, v2

    goto/16 :goto_1

    .line 962
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$1800(Lcom/htc/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShareClicked() - adapter is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

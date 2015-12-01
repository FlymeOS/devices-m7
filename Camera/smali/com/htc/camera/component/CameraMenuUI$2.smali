.class Lcom/htc/camera/component/CameraMenuUI$2;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v8, -0x1

    const/16 v2, 0x2712

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 270
    .line 271
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 272
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v0

    float-to-int v4, v0

    .line 273
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 274
    packed-switch v0, :pswitch_data_0

    :goto_0
    move v9, v3

    .line 457
    :cond_0
    return v9

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->shinkMenuViewPager()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1200(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 278
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CurrentLongPressedView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$800(Lcom/htc/camera/component/CameraMenuUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CurrentLongPressedView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$800(Lcom/htc/camera/component/CameraMenuUI;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/4 v2, 0x0

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_CurrentLongPressedView:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/htc/camera/component/CameraMenuUI;->access$802(Lcom/htc/camera/component/CameraMenuUI;Landroid/view/View;)Landroid/view/View;

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    sget-object v2, Lcom/htc/camera/component/CameraMenuUI$DragState;->DRAG_TO_REORDER:Lcom/htc/camera/component/CameraMenuUI$DragState;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_DragState:Lcom/htc/camera/component/CameraMenuUI$DragState;
    invoke-static {v0, v2}, Lcom/htc/camera/component/CameraMenuUI;->access$1302(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/component/CameraMenuUI$DragState;)Lcom/htc/camera/component/CameraMenuUI$DragState;

    .line 287
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1400(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start drag (x: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ,y: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "), position: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->pointToViewPosition(IIZ)I
    invoke-static {v5, v1, v4, v9}, Lcom/htc/camera/component/CameraMenuUI;->access$300(Lcom/htc/camera/component/CameraMenuUI;IIZ)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0156

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v0

    if-ltz v0, :cond_12

    .line 290
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsHandleDropEvent:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/CameraMenuUI;->access$1502(Lcom/htc/camera/component/CameraMenuUI;Z)Z

    .line 292
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/capturemode/ICaptureModeManager;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v2, v3

    .line 293
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 295
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v1

    iget-object v5, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v5}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    iget-object v1, v1, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mItemName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 297
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->isUserDefined()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_DeleteIconContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1700(Lcom/htc/camera/component/CameraMenuUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0e0154

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, v3}, Lcom/htc/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    .line 300
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_DeleteIconContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1700(Lcom/htc/camera/component/CameraMenuUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0e0155

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0, v3}, Lcom/htc/camera/widget/ColorMultiplyTextView;->applyColorMultiplication(Z)V

    .line 301
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_DeleteIconContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$1700(Lcom/htc/camera/component/CameraMenuUI;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v2}, Lcom/htc/camera/component/CameraMenuUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/component/CameraMenuUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 302
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_DeleteIconContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$1700(Lcom/htc/camera/component/CameraMenuUI;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v3}, Lcom/htc/camera/component/CameraMenuUI;->showUI(Landroid/view/View;ZZ)V

    :cond_2
    move v3, v9

    .line 307
    goto/16 :goto_0

    .line 293
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->pointToViewPosition(IIZ)I
    invoke-static {v0, v1, v4, v3}, Lcom/htc/camera/component/CameraMenuUI;->access$300(Lcom/htc/camera/component/CameraMenuUI;IIZ)I

    move-result v0

    .line 312
    iget-object v5, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/camera/component/CameraMenuUI;->access$1800(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "location estimate (x: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,y: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " m_IsAnimating: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimating:Z
    invoke-static {v7}, Lcom/htc/camera/component/CameraMenuUI;->access$1900(Lcom/htc/camera/component/CameraMenuUI;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0e0156

    if-ne v5, v6, :cond_12

    .line 315
    iget-object v5, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimating:Z
    invoke-static {v5}, Lcom/htc/camera/component/CameraMenuUI;->access$1900(Lcom/htc/camera/component/CameraMenuUI;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 318
    const/16 v5, 0x63

    if-eq v0, v5, :cond_0

    .line 320
    if-ne v0, v8, :cond_4

    .line 322
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->getNearestViewPosition(IIZ)I
    invoke-static {v0, v1, v4, v3}, Lcom/htc/camera/component/CameraMenuUI;->access$2000(Lcom/htc/camera/component/CameraMenuUI;IIZ)I

    move-result v0

    .line 323
    if-eq v0, v8, :cond_0

    :cond_4
    move v8, v0

    .line 327
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2100(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "previous drag location: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mDropPosition: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1100(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " current location: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1100(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v0

    if-eq v0, v8, :cond_12

    .line 331
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimationFilter:Z
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2200(Lcom/htc/camera/component/CameraMenuUI;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimationFilter:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/CameraMenuUI;->access$2202(Lcom/htc/camera/component/CameraMenuUI;Z)Z

    .line 334
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    move v3, v9

    goto/16 :goto_0

    .line 338
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimationFilter:Z
    invoke-static {v0, v9}, Lcom/htc/camera/component/CameraMenuUI;->access$2202(Lcom/htc/camera/component/CameraMenuUI;Z)Z

    .line 339
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v9

    const-wide/16 v6, 0x190

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/CameraMenuUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    .line 340
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v0, v8}, Lcom/htc/camera/component/CameraMenuUI;->access$1102(Lcom/htc/camera/component/CameraMenuUI;I)I

    move v3, v9

    goto/16 :goto_0

    .line 346
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0156

    if-eq v0, v1, :cond_12

    .line 348
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimationFilter:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/CameraMenuUI;->access$2202(Lcom/htc/camera/component/CameraMenuUI;Z)Z

    .line 349
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0153

    if-ne v0, v1, :cond_6

    .line 353
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v2, 0x2714

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 354
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v2, 0x2715

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 355
    const v0, 0x7f0e0154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, v9}, Lcom/htc/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    .line 356
    const v0, 0x7f0e0155

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0, v9}, Lcom/htc/camera/widget/ColorMultiplyTextView;->applyColorMultiplication(Z)V

    move v3, v9

    goto/16 :goto_0

    .line 358
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0152

    if-ne v0, v1, :cond_7

    .line 360
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v0, v8}, Lcom/htc/camera/component/CameraMenuUI;->access$1102(Lcom/htc/camera/component/CameraMenuUI;I)I

    .line 361
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v2, 0x2715

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 362
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v2, 0x2714

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/camera/component/CameraMenuUI;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    move v3, v9

    goto/16 :goto_0

    .line 364
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e015b

    if-ne v0, v1, :cond_12

    .line 366
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v0, v8}, Lcom/htc/camera/component/CameraMenuUI;->access$1102(Lcom/htc/camera/component/CameraMenuUI;I)I

    .line 367
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v2, 0x2714

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 368
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v2, 0x2715

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/camera/component/CameraMenuUI;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    move v3, v9

    goto/16 :goto_0

    .line 373
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2300(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v2}, Lcom/htc/camera/component/CameraMenuUI;->access$1100(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0153

    if-ne v0, v1, :cond_12

    .line 376
    const v0, 0x7f0e0154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, v3}, Lcom/htc/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    .line 377
    const v0, 0x7f0e0155

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0, v3}, Lcom/htc/camera/widget/ColorMultiplyTextView;->applyColorMultiplication(Z)V

    move v3, v9

    goto/16 :goto_0

    .line 381
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2400(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drop position: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1100(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$DragState;->DROP_TO_REORDER:Lcom/htc/camera/component/CameraMenuUI$DragState;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_DragState:Lcom/htc/camera/component/CameraMenuUI$DragState;
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$1302(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/component/CameraMenuUI$DragState;)Lcom/htc/camera/component/CameraMenuUI$DragState;

    .line 383
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimationFilter:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/CameraMenuUI;->access$2202(Lcom/htc/camera/component/CameraMenuUI;Z)Z

    .line 384
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0153

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v0

    if-ltz v0, :cond_a

    .line 388
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$DragState;->DROP_TO_DELETE:Lcom/htc/camera/component/CameraMenuUI$DragState;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_DragState:Lcom/htc/camera/component/CameraMenuUI$DragState;
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$1302(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/component/CameraMenuUI$DragState;)Lcom/htc/camera/component/CameraMenuUI$DragState;

    .line 389
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    .line 391
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$1600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/capturemode/ICaptureModeManager;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 392
    const/4 v4, 0x0

    .line 393
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_11

    .line 395
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v2}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mItemName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 397
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 402
    :goto_3
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v3}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v3

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v2, v3}, Lcom/htc/camera/component/CameraMenuUI;->access$1102(Lcom/htc/camera/component/CameraMenuUI;I)I

    .line 403
    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureMode;->isUserDefined()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 405
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v2}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->deleteItem(Lcom/htc/camera/component/CameraMenuUI$MenuItem;)V

    .line 406
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->notifyDataSetChanged()V

    .line 407
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->updateCaptureModes()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2500(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 408
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->updatePageIndicatorState()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2600(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 411
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/capturemode/ICaptureModeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/camera/capturemode/ICaptureModeManager;->deleteCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    .line 434
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsHandleDropEvent:Z
    invoke-static {v0, v9}, Lcom/htc/camera/component/CameraMenuUI;->access$1502(Lcom/htc/camera/component/CameraMenuUI;Z)Z

    .line 435
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->expendMenuViewPager()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2700(Lcom/htc/camera/component/CameraMenuUI;)V

    move v3, v9

    .line 436
    goto/16 :goto_0

    .line 393
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 414
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0156

    if-ne v0, v1, :cond_c

    .line 416
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1100(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v0

    if-ne v0, v8, :cond_b

    .line 418
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v1

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$1102(Lcom/htc/camera/component/CameraMenuUI;I)I

    .line 419
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v9

    const-wide/16 v6, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/CameraMenuUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    goto :goto_4

    .line 422
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1100(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v9

    const-wide/16 v6, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/CameraMenuUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    goto :goto_4

    .line 426
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v4, 0x2714

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/component/CameraMenuUI;->hasMessages(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 427
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v4, 0x2714

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 428
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v4, 0x2715

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/component/CameraMenuUI;->hasMessages(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 429
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v4, 0x2715

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 431
    :cond_e
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v1

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$1102(Lcom/htc/camera/component/CameraMenuUI;I)I

    .line 432
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v9

    const-wide/16 v6, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/CameraMenuUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    goto/16 :goto_4

    .line 438
    :pswitch_5
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2800(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drag end position x: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ,y: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mDragPosition: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mDropPosition: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1100(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_DeleteIconContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$1700(Lcom/htc/camera/component/CameraMenuUI;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/htc/camera/component/CameraMenuUI;->showUI(Landroid/view/View;ZZ)V

    .line 440
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsHandleDropEvent:Z
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1500(Lcom/htc/camera/component/CameraMenuUI;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 442
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimationFilter:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/CameraMenuUI;->access$2202(Lcom/htc/camera/component/CameraMenuUI;Z)Z

    .line 443
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 444
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v1

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$1102(Lcom/htc/camera/component/CameraMenuUI;I)I

    .line 445
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v4}, Lcom/htc/camera/component/CameraMenuUI;->access$1000(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v9

    const-wide/16 v6, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/CameraMenuUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    .line 446
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsHandleDropEvent:Z
    invoke-static {v0, v9}, Lcom/htc/camera/component/CameraMenuUI;->access$1502(Lcom/htc/camera/component/CameraMenuUI;Z)Z

    .line 448
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v2, 0x2713

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 449
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$000(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$MenuState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->DRAGGING:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    if-ne v0, v1, :cond_10

    .line 450
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->OPEN:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$002(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/component/CameraMenuUI$MenuState;)Lcom/htc/camera/component/CameraMenuUI$MenuState;

    .line 451
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$2;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->expendMenuViewPager()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2700(Lcom/htc/camera/component/CameraMenuUI;)V

    move v3, v9

    .line 452
    goto/16 :goto_0

    :cond_11
    move-object v1, v4

    goto/16 :goto_3

    :cond_12
    move v3, v9

    goto/16 :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class Lcom/htc/camera/component/ObjectTrackingRenderer$6;
.super Ljava/lang/Object;
.source "ObjectTrackingRenderer.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/htc/camera/ObjectTrackingInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingRenderer;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/ObjectTrackingInfo;",
            ">;>;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/ObjectTrackingInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$500(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$500(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 524
    iget-object v3, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$500(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;

    # invokes: Lcom/htc/camera/component/ObjectTrackingRenderer;->releaseObjectFrameInfo(Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V
    invoke-static {v3, v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$600(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V

    .line 523
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$500(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 526
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 529
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 530
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$700(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/Hashtable;

    move-result-object v1

    monitor-enter v1

    .line 535
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$700(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;

    .line 536
    iget-object v3, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # invokes: Lcom/htc/camera/component/ObjectTrackingRenderer;->releaseObjectFrameInfo(Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V
    invoke-static {v3, v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$600(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V

    goto :goto_1

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 526
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 537
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$700(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 538
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 600
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Use3DRendering:Z
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$100(Lcom/htc/camera/component/ObjectTrackingRenderer;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$300(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/ui/ICameraPreviewOverlay;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 601
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$300(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/ui/ICameraPreviewOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->invalidateOverlay()V

    .line 602
    :cond_3
    return-void

    .line 542
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Lcom/htc/camera/ObjectTrackingInfo;

    .line 543
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 544
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    invoke-virtual {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 546
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_5

    .line 548
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/htc/camera/ObjectTrackingInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ObjectTrackingInfo;

    .line 549
    iget-object v3, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    aget-object v4, v2, v1

    iget-object v4, v4, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    # invokes: Lcom/htc/camera/component/ObjectTrackingRenderer;->mirrorRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    invoke-static {v3, v4}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$800(Lcom/htc/camera/component/ObjectTrackingRenderer;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    .line 550
    aput-object v0, v2, v1

    .line 546
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 555
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$700(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/Hashtable;

    move-result-object v3

    monitor-enter v3

    .line 557
    :try_start_4
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 558
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_8

    .line 560
    aget-object v5, v2, v1

    .line 562
    iget v0, v5, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    if-eqz v0, :cond_7

    .line 564
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$700(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/Hashtable;

    move-result-object v0

    iget v6, v5, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;

    .line 565
    if-nez v0, :cond_6

    .line 567
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # invokes: Lcom/htc/camera/component/ObjectTrackingRenderer;->getObjectFrameInfo()Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$900(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;

    move-result-object v0

    .line 568
    iput-object v5, v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->objectTrackingInfo:Lcom/htc/camera/ObjectTrackingInfo;

    .line 569
    iget-object v6, v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->currentBounds:Landroid/graphics/RectF;

    iget-object v7, v5, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 570
    iget-object v6, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;
    invoke-static {v6}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$700(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/Hashtable;

    move-result-object v6

    iget v7, v5, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_6
    iget-object v0, v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->actualBounds:Landroid/graphics/RectF;

    iget-object v6, v5, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 573
    iget v0, v5, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 558
    :goto_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    .line 577
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$500(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 579
    :try_start_5
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # invokes: Lcom/htc/camera/component/ObjectTrackingRenderer;->getObjectFrameInfo()Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$900(Lcom/htc/camera/component/ObjectTrackingRenderer;)Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;

    move-result-object v0

    .line 580
    iput-object v5, v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->objectTrackingInfo:Lcom/htc/camera/ObjectTrackingInfo;

    .line 581
    iget-object v7, v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->currentBounds:Landroid/graphics/RectF;

    iget-object v8, v5, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 582
    iget-object v7, v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->actualBounds:Landroid/graphics/RectF;

    iget-object v5, v5, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v7, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 583
    iget-object v5, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_UnknownFrames:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$500(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    monitor-exit v6

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    .line 596
    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 587
    :cond_8
    :try_start_7
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$700(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v5, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v5, :cond_a

    aget-object v6, v2, v1

    .line 589
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 591
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$700(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;

    .line 592
    iget-object v7, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_KnownFrames:Ljava/util/Hashtable;
    invoke-static {v7}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$700(Lcom/htc/camera/component/ObjectTrackingRenderer;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object v6, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # invokes: Lcom/htc/camera/component/ObjectTrackingRenderer;->releaseObjectFrameInfo(Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V
    invoke-static {v6, v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$600(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;)V

    .line 587
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 596
    :cond_a
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_2
.end method

.class Landroid/hardware/camera2/CameraManager$CameraServiceListener;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraServiceListener"
.end annotation


# static fields
.field public static final STATUS_ENUMERATING:I = 0x2

.field public static final STATUS_NOT_AVAILABLE:I = -0x80000000

.field public static final STATUS_NOT_PRESENT:I = 0x0

.field public static final STATUS_PRESENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraServiceListener"


# instance fields
.field private final mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .locals 1

    .prologue
    .line 675
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    .line 691
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/camera2/CameraManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "x1"    # Landroid/hardware/camera2/CameraManager$1;

    .prologue
    .line 675
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;-><init>(Landroid/hardware/camera2/CameraManager;)V

    return-void
.end method

.method private isAvailable(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 701
    packed-switch p1, :pswitch_data_0

    .line 705
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 703
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .prologue
    .line 723
    invoke-direct {p0, p4}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraServiceListener$1;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraServiceListener$1;-><init>(Landroid/hardware/camera2/CameraManager$CameraServiceListener;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 740
    :goto_0
    return-void

    .line 732
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraServiceListener;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private validStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 710
    sparse-switch p1, :sswitch_data_0

    .line 717
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 715
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 710
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 697
    return-object p0
.end method

.method public onStatusChanged(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 756
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->access$200(Landroid/hardware/camera2/CameraManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 757
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 758
    monitor-exit v1

    .line 759
    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStatusChangedLocked(ILjava/lang/String;)V
    .locals 12
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 762
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->DEBUG:Z
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->access$600(Landroid/hardware/camera2/CameraManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 763
    const-string v5, "CameraServiceListener"

    const-string v6, "Camera id %s has status changed to 0x%x"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p2, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->validStatus(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 768
    const-string v5, "CameraServiceListener"

    const-string v6, "Ignoring invalid device %s status 0x%x"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p2, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_1
    :goto_0
    return-void

    .line 773
    :cond_2
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 775
    .local v4, "oldStatus":Ljava/lang/Integer;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 776
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->DEBUG:Z
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->access$600(Landroid/hardware/camera2/CameraManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 777
    const-string v5, "CameraServiceListener"

    const-string v6, "Device status changed to 0x%x, which is what it already was"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 797
    :cond_3
    if-eqz v4, :cond_4

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v6

    if-ne v5, v6, :cond_4

    .line 798
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->DEBUG:Z
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->access$600(Landroid/hardware/camera2/CameraManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 799
    const-string v5, "CameraServiceListener"

    const-string v6, "Device status was previously available (%d),  and is now again available (%d)so no new client visible update will be sent"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 809
    :cond_4
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mCallbackMap:Landroid/util/ArrayMap;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->access$700(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 810
    .local v1, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 811
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mCallbackMap:Landroid/util/ArrayMap;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->access$700(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 812
    .local v2, "handler":Landroid/os/Handler;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mCallbackMap:Landroid/util/ArrayMap;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->access$700(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 814
    .local v0, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v0, v2, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 810
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 747
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 748
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 749
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 750
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

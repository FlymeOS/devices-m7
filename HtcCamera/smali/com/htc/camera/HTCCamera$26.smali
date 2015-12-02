.class Lcom/htc/camera/HTCCamera$26;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Lcom/htc/camera/io/StorageSlot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2325
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$26;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$26;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mIsUpdatingStorageSlotSetting:Z
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$4600(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2330
    iget-object v1, p0, Lcom/htc/camera/HTCCamera$26;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, p2, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    const/4 v2, 0x0

    # invokes: Lcom/htc/camera/HTCCamera;->onStorageSlotChanged(Lcom/htc/camera/io/StorageSlot;Z)V
    invoke-static {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->access$4700(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/io/StorageSlot;Z)V

    .line 2331
    :cond_0
    return-void
.end method

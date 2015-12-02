.class Lcom/htc/camera/zoe/ZoeUI$17;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "ZoeUI.java"


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
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$17;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2
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
    .line 1130
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$17;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$17;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_NeedShowSDCardToast:Z
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->access$3402(Lcom/htc/camera/zoe/ZoeUI;Z)Z

    .line 1132
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$17;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->showSDCardWarningToast()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$4100(Lcom/htc/camera/zoe/ZoeUI;)V

    .line 1134
    :cond_0
    return-void
.end method

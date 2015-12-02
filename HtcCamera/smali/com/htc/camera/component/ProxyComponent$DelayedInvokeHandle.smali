.class public final Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;
.super Lcom/htc/camera/CloseableHandle;
.source "ProxyComponent.java"


# instance fields
.field public final arguments:[Ljava/lang/Object;

.field public final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public returnValue:Ljava/lang/Object;

.field public final targetMethodName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/camera/component/ProxyComponent;


# direct methods
.method protected constructor <init>(Lcom/htc/camera/component/ProxyComponent;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->this$0:Lcom/htc/camera/component/ProxyComponent;

    .line 49
    const-string v0, "DelayedInvoke"

    invoke-direct {p0, v0}, Lcom/htc/camera/CloseableHandle;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->targetMethodName:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->parameterTypes:[Ljava/lang/Class;

    .line 52
    iput-object p4, p0, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->arguments:[Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->returnValue:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/camera/CloseableHandle;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CloseableHandle;

    invoke-virtual {v0, p1}, Lcom/htc/camera/CloseableHandle;->close(I)Lcom/htc/camera/CloseableHandle;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->this$0:Lcom/htc/camera/component/ProxyComponent;

    # invokes: Lcom/htc/camera/component/ProxyComponent;->endInvokeTargetMethod(Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;)Z
    invoke-static {v0, p0}, Lcom/htc/camera/component/ProxyComponent;->access$000(Lcom/htc/camera/component/ProxyComponent;Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;)Z

    .line 61
    return-void
.end method

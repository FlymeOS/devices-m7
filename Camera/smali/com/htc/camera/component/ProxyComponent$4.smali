.class Lcom/htc/camera/component/ProxyComponent$4;
.super Ljava/lang/Object;
.source "ProxyComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ProxyComponent;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ProxyComponent;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/camera/component/ProxyComponent$4;->this$0:Lcom/htc/camera/component/ProxyComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent$4;->this$0:Lcom/htc/camera/component/ProxyComponent;

    # invokes: Lcom/htc/camera/component/ProxyComponent;->bind()V
    invoke-static {v0}, Lcom/htc/camera/component/ProxyComponent;->access$200(Lcom/htc/camera/component/ProxyComponent;)V

    .line 353
    return-void
.end method

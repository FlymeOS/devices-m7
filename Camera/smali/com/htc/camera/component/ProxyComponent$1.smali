.class Lcom/htc/camera/component/ProxyComponent$1;
.super Ljava/lang/Object;
.source "ProxyComponent.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ProxyComponent;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ProxyComponent;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/camera/component/ProxyComponent$1;->this$0:Lcom/htc/camera/component/ProxyComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent$1;->this$0:Lcom/htc/camera/component/ProxyComponent;

    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent$1;->this$0:Lcom/htc/camera/component/ProxyComponent;

    const v2, 0x1d4ca

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p2, v5, v3

    const/4 v4, 0x1

    aput-object p3, v5, v4

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ProxyComponent;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 80
    return-void
.end method

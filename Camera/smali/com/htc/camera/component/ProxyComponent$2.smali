.class Lcom/htc/camera/component/ProxyComponent$2;
.super Ljava/lang/Object;
.source "ProxyComponent.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ProxyComponent;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ProxyComponent;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/camera/component/ProxyComponent$2;->this$0:Lcom/htc/camera/component/ProxyComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent$2;->this$0:Lcom/htc/camera/component/ProxyComponent;

    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent$2;->this$0:Lcom/htc/camera/component/ProxyComponent;

    const v2, 0x1d4de

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p2, v5, v3

    const/4 v4, 0x1

    aput-object p3, v5, v4

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ProxyComponent;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 89
    return-void
.end method

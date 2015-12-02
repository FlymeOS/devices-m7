.class Lcom/htc/camera/HTCCamera$1;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/htc/camera/data/d;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$1;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$1;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$000(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/base/BaseObjectProxy;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/htc/camera/base/BaseObjectProxy;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

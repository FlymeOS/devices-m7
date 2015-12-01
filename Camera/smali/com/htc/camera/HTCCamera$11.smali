.class Lcom/htc/camera/HTCCamera$11;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$11;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4

    .prologue
    .line 1224
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1225
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera$11;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mShowNavigationBarHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$2300(Lcom/htc/camera/HTCCamera;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$11;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$500(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/HTCCamera$MainHandler;

    move-result-object v0

    const/16 v1, 0x2904

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;IJ)V

    .line 1227
    :cond_0
    return-void

    .line 1224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

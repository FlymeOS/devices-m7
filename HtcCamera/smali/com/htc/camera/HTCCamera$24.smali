.class Lcom/htc/camera/HTCCamera$24;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 2145
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$24;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$24;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->recreate()V

    .line 2149
    return-void
.end method

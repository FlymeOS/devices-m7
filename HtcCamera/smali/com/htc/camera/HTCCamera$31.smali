.class Lcom/htc/camera/HTCCamera$31;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 5232
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$31;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 5234
    const-string v0, "HTCCamera"

    const-string v1, "onClick: activate "

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5235
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$31;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->activate()V

    .line 5236
    return-void
.end method

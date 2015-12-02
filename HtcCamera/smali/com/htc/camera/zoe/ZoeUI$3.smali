.class Lcom/htc/camera/zoe/ZoeUI$3;
.super Ljava/lang/Object;
.source "ZoeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$3;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$3;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$500(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/widget/ZoeProgressIndicator;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ZoeProgressIndicator;->setVisibility(I)V

    .line 806
    return-void
.end method

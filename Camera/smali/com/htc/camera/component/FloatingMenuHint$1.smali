.class Lcom/htc/camera/component/FloatingMenuHint$1;
.super Landroid/view/View;
.source "FloatingMenuHint.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FloatingMenuHint;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FloatingMenuHint;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/camera/component/FloatingMenuHint$1;->this$0:Lcom/htc/camera/component/FloatingMenuHint;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint$1;->this$0:Lcom/htc/camera/component/FloatingMenuHint;

    # getter for: Lcom/htc/camera/component/FloatingMenuHint;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/FloatingMenuHint;->access$000(Lcom/htc/camera/component/FloatingMenuHint;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDraw()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint$1;->this$0:Lcom/htc/camera/component/FloatingMenuHint;

    # getter for: Lcom/htc/camera/component/FloatingMenuHint;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;
    invoke-static {v0}, Lcom/htc/camera/component/FloatingMenuHint;->access$100(Lcom/htc/camera/component/FloatingMenuHint;)Lcom/htc/camera/widget/ShadowTextRenderer;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v2}, Lcom/htc/camera/widget/ShadowTextRenderer;->draw(Landroid/graphics/Canvas;FF)V

    .line 250
    return-void
.end method

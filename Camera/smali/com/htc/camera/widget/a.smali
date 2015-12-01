.class final Lcom/htc/camera/widget/a;
.super Ljava/lang/Object;
.source "ColorMultiplyRenderer.java"

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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 31
    const-string v0, "ColorMultiplyRenderer"

    const-string v1, "onEventReceived(updateThemeIDEvent) - reset all static color ID"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    # setter for: Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_CategoryColor:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->access$002(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 33
    # setter for: Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_DarkCategoryColor:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->access$102(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 34
    # setter for: Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_LightCategoryColor:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->access$202(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 35
    # setter for: Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_MultiplyColor:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->access$302(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 36
    # setter for: Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_OverlayColor:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->access$402(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 37
    return-void
.end method

.class Lcom/htc/camera/effect/EffectPanelUI$1;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$1;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$1;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->onEffectButtonClicked()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$000(Lcom/htc/camera/effect/EffectPanelUI;)V

    .line 208
    return-void
.end method

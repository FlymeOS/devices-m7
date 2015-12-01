.class Lcom/htc/camera/component/IndicatorsUI$29;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/htc/camera/component/n;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$29;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rotate(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$29;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/htc/camera/rotate/UIRotation;)V
    invoke-static {v0, p2}, Lcom/htc/camera/component/IndicatorsUI;->access$900(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/UIRotation;)V

    .line 738
    return-void
.end method

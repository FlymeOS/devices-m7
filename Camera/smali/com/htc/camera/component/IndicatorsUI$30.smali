.class Lcom/htc/camera/component/IndicatorsUI$30;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/htc/camera/component/n;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;

.field final synthetic val$container:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$30;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iput-object p2, p0, Lcom/htc/camera/component/IndicatorsUI$30;->val$container:Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object p3, p0, Lcom/htc/camera/component/IndicatorsUI$30;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rotate(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 3

    .prologue
    .line 762
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$30;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$30;->val$container:Lcom/htc/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/htc/camera/component/IndicatorsUI$30;->val$imageView:Landroid/widget/ImageView;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/htc/camera/rotate/UIRotation;)V
    invoke-static {v0, v1, v2, p2}, Lcom/htc/camera/component/IndicatorsUI;->access$1800(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/htc/camera/rotate/UIRotation;)V

    .line 763
    return-void
.end method

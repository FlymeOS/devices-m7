.class Lcom/htc/camera/component/IndicatorsUI$23;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "IndicatorsUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$23;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$23;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/IndicatorsUI;->m_Is1stTapCaptureToastShown:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/IndicatorsUI;->access$702(Lcom/htc/camera/component/IndicatorsUI;Z)Z

    .line 612
    return-void
.end method

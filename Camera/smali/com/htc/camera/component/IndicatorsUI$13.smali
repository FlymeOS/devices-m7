.class Lcom/htc/camera/component/IndicatorsUI$13;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$13;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$13;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/IndicatorsUI;->m_Is1stTapCaptureToastShown:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/IndicatorsUI;->access$702(Lcom/htc/camera/component/IndicatorsUI;Z)Z

    .line 488
    return-void
.end method

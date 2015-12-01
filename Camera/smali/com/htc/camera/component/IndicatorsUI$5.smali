.class Lcom/htc/camera/component/IndicatorsUI$5;
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
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$5;->this$0:Lcom/htc/camera/component/IndicatorsUI;

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
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$5;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$5;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/htc/camera/component/IndicatorsUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/htc/camera/rotate/UIRotation;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/IndicatorsUI;->access$900(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/UIRotation;)V

    .line 303
    return-void
.end method

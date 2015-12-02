.class Lcom/htc/camera/component/IndicatorsUI$18;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$18;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$18;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->updateMuteIndicator()V
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1400(Lcom/htc/camera/component/IndicatorsUI;)V

    .line 551
    return-void
.end method

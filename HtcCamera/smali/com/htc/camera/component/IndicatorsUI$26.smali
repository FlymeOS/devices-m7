.class Lcom/htc/camera/component/IndicatorsUI$26;
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
    .line 648
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$26;->this$0:Lcom/htc/camera/component/IndicatorsUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$26;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->showRemainingCounter(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/IndicatorsUI;->access$1200(Lcom/htc/camera/component/IndicatorsUI;Z)V

    .line 653
    return-void
.end method

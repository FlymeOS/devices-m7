.class Lcom/htc/camera/component/IndicatorsUI$21;
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
        "Lcom/htc/camera/Resolution;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$21;->this$0:Lcom/htc/camera/component/IndicatorsUI;

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
            "Lcom/htc/camera/Resolution;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$21;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$21$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/IndicatorsUI$21$1;-><init>(Lcom/htc/camera/component/IndicatorsUI$21;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/IndicatorsUI;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 595
    :cond_0
    return-void
.end method

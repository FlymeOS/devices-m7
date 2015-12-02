.class Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$3;
.super Ljava/lang/Object;
.source "LaunchModeFromGridViewStatisticController.java"

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
.field final synthetic this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$3;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

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
    .line 129
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$3;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

    # getter for: Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mHasChanged:Z
    invoke-static {v0}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->access$200(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$3;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->saveToPreference()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$3;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->loadFromPreference()V

    goto :goto_0
.end method

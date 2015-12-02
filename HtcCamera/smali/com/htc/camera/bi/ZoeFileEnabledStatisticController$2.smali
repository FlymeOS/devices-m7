.class Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$2;
.super Ljava/lang/Object;
.source "ZoeFileEnabledStatisticController.java"

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
.field final synthetic this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$2;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

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
    .line 127
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$2;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # getter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mHasChanged:Z
    invoke-static {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$100(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$2;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->saveToPreference()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$2;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->loadFromPreference()V

    goto :goto_0
.end method

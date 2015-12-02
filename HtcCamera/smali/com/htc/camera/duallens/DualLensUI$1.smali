.class Lcom/htc/camera/duallens/DualLensUI$1;
.super Ljava/lang/Object;
.source "DualLensUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/duallens/DualLensUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensUI;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensUI$1;->this$0:Lcom/htc/camera/duallens/DualLensUI;

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
    .line 61
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensUI$1;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->onModeActiveChanged(Z)V
    invoke-static {v1, v0}, Lcom/htc/camera/duallens/DualLensUI;->access$000(Lcom/htc/camera/duallens/DualLensUI;Z)V

    .line 62
    return-void
.end method

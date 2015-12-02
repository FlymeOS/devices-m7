.class Lcom/htc/camera/mainbar/ExpandableMenuUI$16;
.super Ljava/lang/Object;
.source "ExpandableMenuUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$16;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

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
    .line 795
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$16;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/UIState;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->onSettingsPanelStateChanged(Lcom/htc/camera/UIState;)V
    invoke-static {v1, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$3300(Lcom/htc/camera/mainbar/ExpandableMenuUI;Lcom/htc/camera/UIState;)V

    .line 796
    return-void
.end method

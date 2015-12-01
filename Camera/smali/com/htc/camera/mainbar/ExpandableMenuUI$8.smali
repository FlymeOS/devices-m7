.class Lcom/htc/camera/mainbar/ExpandableMenuUI$8;
.super Ljava/lang/Object;
.source "ExpandableMenuUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$8;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$8;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateButtonStates()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1500(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    .line 679
    return-void
.end method

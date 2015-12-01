.class Lcom/htc/camera/mainbar/ExpandableMenuUI$20;
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
        "Lcom/htc/camera/photopattern/PhotoBoothPattern;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$20;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

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
            "Lcom/htc/camera/photopattern/PhotoBoothPattern;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/photopattern/PhotoBoothPattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 847
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$20;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateSceneIcon()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$3600(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    .line 849
    return-void
.end method

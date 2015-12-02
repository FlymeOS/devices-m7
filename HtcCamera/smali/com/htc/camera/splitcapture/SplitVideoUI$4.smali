.class Lcom/htc/camera/splitcapture/SplitVideoUI$4;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$4;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 6
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
    const/4 v3, 0x0

    .line 380
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$4;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$4;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    const/16 v2, 0x2711

    iget-object v5, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    move v4, v3

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1300(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 381
    return-void
.end method

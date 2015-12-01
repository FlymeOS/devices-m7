.class Lcom/htc/camera/photopattern/PhotoBoothUI2$14;
.super Ljava/lang/Object;
.source "PhotoBoothUI2.java"

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
.field final synthetic this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$14;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

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
    .line 1346
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$14;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # invokes: Lcom/htc/camera/photopattern/PhotoBoothUI2;->hideReviewScreen()V
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$2600(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    .line 1349
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$14;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # invokes: Lcom/htc/camera/photopattern/PhotoBoothUI2;->openCaptureUI()V
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$2900(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    .line 1350
    return-void
.end method

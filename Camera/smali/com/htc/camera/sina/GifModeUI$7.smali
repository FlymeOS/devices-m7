.class Lcom/htc/camera/sina/GifModeUI$7;
.super Ljava/lang/Object;
.source "GifModeUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/sina/GifModeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/sina/GifModeUI;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/htc/camera/sina/GifModeUI$7;->this$0:Lcom/htc/camera/sina/GifModeUI;

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
    .line 585
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$7;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # invokes: Lcom/htc/camera/sina/GifModeUI;->closeCaptureUI()V
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeUI;->access$400(Lcom/htc/camera/sina/GifModeUI;)V

    .line 586
    return-void
.end method

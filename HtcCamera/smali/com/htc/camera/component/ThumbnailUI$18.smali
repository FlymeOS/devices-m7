.class Lcom/htc/camera/component/ThumbnailUI$18;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailUI;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI$18;->this$0:Lcom/htc/camera/component/ThumbnailUI;

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
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 811
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$18;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # invokes: Lcom/htc/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/htc/camera/component/ThumbnailUI;->access$1100(Lcom/htc/camera/component/ThumbnailUI;ZZ)V

    .line 812
    return-void
.end method

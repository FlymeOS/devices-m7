.class Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$3;
.super Ljava/lang/Object;
.source "PopupIconMenuMainBarItem.java"

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
.field final synthetic this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$3;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

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
    .line 87
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$3;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->closePopupMenu()V

    .line 89
    :cond_0
    return-void
.end method

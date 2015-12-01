.class Lcom/htc/camera/mainbar/ISOMainBarItem$5;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "ISOMainBarItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ISOMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ISOMainBarItem;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$5;->this$0:Lcom/htc/camera/mainbar/ISOMainBarItem;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$5;->this$0:Lcom/htc/camera/mainbar/ISOMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/ISOMainBarItem;->refreshIcons()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->access$600(Lcom/htc/camera/mainbar/ISOMainBarItem;)V

    .line 390
    return-void
.end method

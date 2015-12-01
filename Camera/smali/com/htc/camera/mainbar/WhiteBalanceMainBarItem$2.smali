.class Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$2;
.super Ljava/lang/Object;
.source "WhiteBalanceMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->updateContent()V

    .line 262
    return-void
.end method

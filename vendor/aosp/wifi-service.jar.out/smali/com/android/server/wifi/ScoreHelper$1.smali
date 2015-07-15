.class Lcom/android/server/wifi/ScoreHelper$1;
.super Ljava/lang/Object;
.source "ScoreHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ScoreHelper;->setWifiConfigurationList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ScoreHelper;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScoreHelper;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/wifi/ScoreHelper$1;->this$0:Lcom/android/server/wifi/ScoreHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "lhs"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "rhs"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 60
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/ScoreHelper$1;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

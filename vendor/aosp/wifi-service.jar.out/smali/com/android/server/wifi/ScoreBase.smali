.class public Lcom/android/server/wifi/ScoreBase;
.super Ljava/lang/Object;
.source "ScoreBase.java"


# instance fields
.field public WEIGHT:I

.field public m_APRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/APRecords;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/ScoreBase;->WEIGHT:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/ScoreBase;->m_APRecords:Ljava/util/List;

    return-void
.end method

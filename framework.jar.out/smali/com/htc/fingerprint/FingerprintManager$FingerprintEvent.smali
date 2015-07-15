.class public Lcom/htc/fingerprint/FingerprintManager$FingerprintEvent;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintEvent"
.end annotation


# instance fields
.field public eventData:Ljava/lang/Object;

.field public eventID:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "eventID"    # I
    .param p2, "eventData"    # Ljava/lang/Object;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p1, p0, Lcom/htc/fingerprint/FingerprintManager$FingerprintEvent;->eventID:I

    .line 173
    iput-object p2, p0, Lcom/htc/fingerprint/FingerprintManager$FingerprintEvent;->eventData:Ljava/lang/Object;

    .line 174
    return-void
.end method

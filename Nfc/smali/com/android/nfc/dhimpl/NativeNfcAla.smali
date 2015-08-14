.class public Lcom/android/nfc/dhimpl/NativeNfcAla;
.super Ljava/lang/Object;
.source "NativeNfcAla.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetAppletsList([Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # [Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public GetCertificateKey()[B
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public doAppletLoadApplet(Ljava/lang/String;[B)I
    .locals 1
    .param p1, "choice"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

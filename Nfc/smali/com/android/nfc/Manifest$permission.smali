.class public final Lcom/android/nfc/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final BEAM_PREVIEW:Ljava/lang/String; = "com.htc.permission.BEAM_PREVIEW"

.field public static final TRANSACTION_EVENT:Ljava/lang/String; = "com.gsma.services.nfc.permission.TRANSACTION_EVENT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

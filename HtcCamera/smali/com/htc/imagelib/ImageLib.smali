.class public Lcom/htc/imagelib/ImageLib;
.super Ljava/lang/Object;
.source "ImageLib.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sImageLib:Lcom/htc/imagelib/ImageLib;

.field private static s_bLibraryLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/imagelib/ImageLib;->s_bLibraryLoaded:Z

    .line 42
    :try_start_0
    const-string v0, "imagelib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    :goto_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/imagelib/ImageLib;->LOCK:Ljava/lang/Object;

    .line 1300
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string v0, "ImageLib"

    const-string v1, "occur UnsatisfiedLinkError!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sput-boolean v2, Lcom/htc/imagelib/ImageLib;->s_bLibraryLoaded:Z

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    const-string v0, "ImageLib"

    const-string v1, "LoadLibrary Exception!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sput-boolean v2, Lcom/htc/imagelib/ImageLib;->s_bLibraryLoaded:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sInstance()Lcom/htc/imagelib/ImageLib;
    .locals 2

    .prologue
    .line 260
    sget-object v1, Lcom/htc/imagelib/ImageLib;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_0
    sget-object v0, Lcom/htc/imagelib/ImageLib;->sImageLib:Lcom/htc/imagelib/ImageLib;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/htc/imagelib/ImageLib;

    invoke-direct {v0}, Lcom/htc/imagelib/ImageLib;-><init>()V

    sput-object v0, Lcom/htc/imagelib/ImageLib;->sImageLib:Lcom/htc/imagelib/ImageLib;

    .line 260
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    sget-object v0, Lcom/htc/imagelib/ImageLib;->sImageLib:Lcom/htc/imagelib/ImageLib;

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public native modifyExifDataBegin(Ljava/lang/String;)I
.end method

.method public native modifyExifDataEnd(ILjava/lang/String;)I
.end method

.method public native setExifTagInt(IIII)I
.end method

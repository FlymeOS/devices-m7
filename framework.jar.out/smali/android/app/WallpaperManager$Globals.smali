.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 245
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 246
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 247
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 248
    return-void
.end method

.method static synthetic access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;

    .prologue
    .line 238
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 311
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v5, :cond_1

    .line 312
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    :goto_0
    return-object v4

    .line 317
    :cond_1
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 319
    .local v3, "params":Landroid/os/Bundle;
    # getter for: Landroid/app/WallpaperManager;->DEBUG_HTC:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 320
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getCurrentWallpaperLocked()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_2
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v5, p0, v3}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 324
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 326
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 328
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inNativeAlloc:Z

    .line 330
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 337
    :try_start_2
    # getter for: Landroid/app/WallpaperManager;->DEBUG_HTC:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 338
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getCurrentWallpaperLocked(), fd.close()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v4, v5

    .line 344
    goto :goto_0

    .line 332
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Can\'t decode file"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    :try_start_4
    # getter for: Landroid/app/WallpaperManager;->DEBUG_HTC:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 338
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getCurrentWallpaperLocked(), fd.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 342
    :catch_1
    move-exception v5

    goto :goto_0

    .line 335
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 337
    :try_start_5
    # getter for: Landroid/app/WallpaperManager;->DEBUG_HTC:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 338
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getCurrentWallpaperLocked(), fd.close()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 344
    :goto_2
    :try_start_6
    throw v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 347
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "params":Landroid/os/Bundle;
    :catch_2
    move-exception v5

    goto :goto_0

    .line 342
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "params":Landroid/os/Bundle;
    :catch_3
    move-exception v6

    goto :goto_2

    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    # getter for: Landroid/app/WallpaperManager;->DEBUG_HTC:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 356
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getDefaultWallpaperLocked()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/app/WallpaperManager$FlymeInject;->mzOpenDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inNativeAlloc:Z

    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 372
    :try_start_1
    # getter for: Landroid/app/WallpaperManager;->DEBUG_HTC:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 373
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getDefaultWallpaperLocked() is.close()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 382
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :goto_0
    return-object v3

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t decode stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    :try_start_3
    # getter for: Landroid/app/WallpaperManager;->DEBUG_HTC:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 373
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getDefaultWallpaperLocked() is.close()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 377
    :catch_1
    move-exception v4

    goto :goto_0

    .line 370
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    .line 372
    :try_start_4
    # getter for: Landroid/app/WallpaperManager;->DEBUG_HTC:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 373
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getDefaultWallpaperLocked() is.close()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 379
    :goto_1
    throw v3

    .line 377
    :catch_2
    move-exception v4

    goto :goto_1

    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 2

    .prologue
    .line 299
    monitor-enter p0

    .line 301
    :try_start_0
    # getter for: Landroid/app/WallpaperManager;->DEBUG_HTC:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "forgetLoadedWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 307
    monitor-exit p0

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    .line 256
    monitor-enter p0

    .line 258
    :try_start_0
    # getter for: Landroid/app/WallpaperManager;->DEBUG_HTC:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onWallpaperChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 264
    monitor-exit p0

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 268
    monitor-enter p0

    .line 270
    :try_start_0
    # getter for: Landroid/app/WallpaperManager;->DEBUG_HTC:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekWallpaperBitmap(), returnDefault = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 294
    :goto_0
    return-object v1

    .line 277
    :cond_1
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 278
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 280
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    :goto_1
    if-eqz p2, :cond_4

    .line 287
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 288
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 289
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 291
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 294
    :cond_4
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

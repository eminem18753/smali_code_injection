.class Lcom/google/android/gms/cast/Cast$CastApi$zza$9;
.super Lcom/google/android/gms/internal/zzjy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/Cast$CastApi$zza;->stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzIt:Lcom/google/android/gms/cast/Cast$CastApi$zza;

.field final synthetic zzIw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$zza;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$9;->zzIt:Lcom/google/android/gms/cast/Cast$CastApi$zza;

    iput-object p3, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$9;->zzIw:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzjy;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzju;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$zza$9;->zza(Lcom/google/android/gms/internal/zzju;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzju;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$9;->zzIw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x7d1

    if-eqz v0, :cond_0

    const-string p1, "IllegalArgument: sessionId cannot be null or empty"

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/cast/Cast$CastApi$zza$9;->zzd(ILjava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$9;->zzIw:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/zzju;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/zza$zzb;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/Cast$CastApi$zza$9;->zzah(I)V

    return-void
.end method
.class Lcom/google/android/gms/internal/zzbj$zza$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbj$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private zzle:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbj$zza$zza;->zzle:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbj$zza$zza;->zzle:Landroid/os/IBinder;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzdr;I)Landroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v3}, Lcom/google/android/gms/internal/zzba;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    invoke-interface {p4}, Lcom/google/android/gms/internal/zzdr;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbj$zza$zza;->zzle:Landroid/os/IBinder;

    invoke-interface {p2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method